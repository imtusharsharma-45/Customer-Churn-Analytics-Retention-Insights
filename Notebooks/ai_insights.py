import os
from datetime import datetime
from pathlib import Path

import pandas as pd
from dotenv import load_dotenv
from groq import Groq

# .env file se API key load karo
load_dotenv()
client = Groq(api_key=os.environ.get("GROQ_API_KEY"))

# Load the churn data and calculate the metrics used in the insight prompt.
project_dir = Path(__file__).resolve().parent.parent
df = pd.read_csv(project_dir / "Data" / "churn_data.csv")
df["churn_flag"] = df["Churn"].eq("Yes")

overall_churn_rate = df["churn_flag"].mean() * 100

def churn_rates_by(column, ordered_categories):
    rates = df.groupby(column)["churn_flag"].mean().mul(100)
    return ", ".join(
        f"{category}: {rates[category]:.2f}%"
        for category in ordered_categories
        if category in rates.index
    )

contract_churn_rates = churn_rates_by(
    "Contract", ["Month-to-month", "One year", "Two year"]
)
internet_service_churn_rates = churn_rates_by(
    "InternetService", ["DSL", "Fiber optic", "No"]
)
payment_method_churn_rates = churn_rates_by(
    "PaymentMethod",
    [
        "Electronic check",
        "Mailed check",
        "Bank transfer (automatic)",
        "Credit card (automatic)",
    ],
)

customer_averages = df.groupby("Churn")[["MonthlyCharges", "tenure"]].mean()
churned_avg_monthly_charges = customer_averages.loc["Yes", "MonthlyCharges"]
retained_avg_monthly_charges = customer_averages.loc["No", "MonthlyCharges"]
churned_avg_tenure = customer_averages.loc["Yes", "tenure"]
retained_avg_tenure = customer_averages.loc["No", "tenure"]

prompt = f"""
You are a business analyst. Based on this customer churn data, write:
1. A 2-sentence executive summary
2. 3 actionable retention recommendations

Calculated data:
- Overall churn rate: {overall_churn_rate:.2f}%
- Churn rate by contract type: {contract_churn_rates}
- Churn rate by internet service: {internet_service_churn_rates}
- Churn rate by payment method: {payment_method_churn_rates}
- Average monthly charges — churned customers: {churned_avg_monthly_charges:.2f}, retained customers: {retained_avg_monthly_charges:.2f}
- Average tenure — churned customers: {churned_avg_tenure:.2f} months, retained customers: {retained_avg_tenure:.2f} months
"""

response = client.chat.completions.create(
   model="openai/gpt-oss-120b",
    messages=[{"role": "user", "content": prompt}]
)

insights = response.choices[0].message.content
timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
report_path = project_dir / "Reports" / "ai_generated_insights.md"

report_path.write_text(
    f"# AI-Generated Churn Insights — Generated on {timestamp}\n\n{insights}\n",
    encoding="utf-8",
)

print(insights)

## certificates/generate_certificate.py

from fpdf import FPDF
from datetime import datetime

def generate_certificate(device_id, user_name):
    pdf = FPDF()
    pdf.add_page()
    pdf.set_font("Arial", size=12)
    pdf.cell(200, 10, txt="EcoCipher Recycling Certificate", ln=True, align='C')
    pdf.ln(10)
    pdf.cell(200, 10, txt=f"Device ID: {device_id}", ln=True)
    pdf.cell(200, 10, txt=f"Issued to: {user_name}", ln=True)
    pdf.cell(200, 10, txt=f"Date: {datetime.now().strftime('%Y-%m-%d')}", ln=True)
    filename = f"{device_id}_certificate.pdf"
    pdf.output(filename)
    print(f"Certificate saved as {filename}")

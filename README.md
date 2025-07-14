# EcoCipher: Cyber-Secure E-Waste Recycling Platform

EcoCipher is a blockchain-powered e-waste disposal and data protection platform. It allows users to schedule secure pickups of e-waste, track their devices through blockchain, and receive tamper-proof recycling certificates.

## 🌍 Key Features
- Blockchain-based traceability for e-waste
- GreenCoins reward system
- QR-based device identification
- Digital proof of recycling and data sanitization
- Cybersecurity-aware disposal practices

---

## 💻 Tech Stack
- **Frontend**: Flutter (Dart)
- **Backend**: Python (Flask)
- **Blockchain**: Solidity on Polygon + Web3.py
- **QR & PDF**: Python QRCode, FPDF
- **IPFS**: Pinata API (for certificate storage)

---

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/your-username/EcoCipher_Project.git
cd EcoCipher_Project
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run Flask Backend:
```bash
cd backend
python app.py
```

4. Run Flutter Frontend:
```bash
cd frontend
flutter run
```

5. Compile & Deploy Smart Contract:
```bash
cd blockchain
npx hardhat compile
npx hardhat run scripts/deploy.js
```

---

## 📄 Certificate Generator:
Generates PDF certificates for recycling, stores in IPFS, and links on blockchain.

## 📸 QR Generator:
Creates unique QR codes per device for tracking.

---

## 🤝 Contributions
Pull requests are welcome! For major changes, please open an issue first.

## 📧 Contact
- Created by: Vedavalli Patnala
- Email: [Your Email]
- GitHub: [Your GitHub Username]
```

---
## backend/app.py

from flask import Flask, request, jsonify
from datetime import datetime

app = Flask(__name__)

pickups = []

@app.route('/book_pickup', methods=['POST'])
def book_pickup():
    data = request.json
    pickup = {
        'device_id': data['device_id'],
        'user': data['user'],
        'address': data['address'],
        'status': 'Scheduled',
        'timestamp': datetime.utcnow().isoformat()
    }
    pickups.append(pickup)
    return jsonify({'message': 'Pickup booked successfully', 'pickup': pickup})

@app.route('/status/<device_id>', methods=['GET'])
def get_status(device_id):
    for p in pickups:
        if p['device_id'] == device_id:
            return jsonify({'status': p['status']})
    return jsonify({'error': 'Device not found'}), 404

if __name__ == '__main__':
    app.run(debug=True)

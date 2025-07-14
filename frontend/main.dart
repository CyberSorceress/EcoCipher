```dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(EcoCipherApp());

class EcoCipherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PickupPage(),
    );
  }
}

class PickupPage extends StatefulWidget {
  @override
  _PickupPageState createState() => _PickupPageState();
}

class _PickupPageState extends State<PickupPage> {
  final deviceController = TextEditingController();
  final addressController = TextEditingController();

  Future<void> bookPickup() async {
    final response = await http.post(
      Uri.parse('http://localhost:5000/book_pickup'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'device_id': deviceController.text,
        'user': 'TestUser',
        'address': addressController.text,
      }),
    );
    final result = jsonDecode(response.body);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result['message'])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EcoCipher Pickup')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: deviceController, decoration: InputDecoration(labelText: 'Device ID')),
            TextField(controller: addressController, decoration: InputDecoration(labelText: 'Pickup Address')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: bookPickup, child: Text('Book Pickup')),
          ],
        ),
      ),
    );
  }
}
```

---
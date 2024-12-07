import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Set your default currency', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // تغيير العملة الافتراضية
              },
              child: Text('Set Bitcoin as Default'),
            ),
            ElevatedButton(
              onPressed: () {
                // تغيير العملة الافتراضية
              },
              child: Text('Set Ethereum as Default'),
            ),
          ],
        ),
      ),
    );
  }
}

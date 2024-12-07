import 'package:flutter/material.dart';

void main() => runApp(WebveliApp());

class WebveliApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webveli Digital Wallet',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WebveliHomePage(),
    );
  }
}

class WebveliHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Webveli Wallet')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to Webveli Wallet', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add navigation or actions for wallet transactions
              },
              child: Text('Open Wallet'),
            ),
          ],
        ),
      ),
    );
  }
}

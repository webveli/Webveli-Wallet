import 'package:flutter/material.dart';
import 'wallet_operations.dart'; // استيراد الفئة الخاصة بالعمليات
import 'wallet_page.dart'; // استيراد صفحة المحفظة
import 'settings_page.dart'; // استيراد صفحة الإعدادات
import 'transaction_history_page.dart'; // استيراد صفحة تاريخ المعاملات

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
  final WalletOperations wallet = WalletOperations();

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletPage(wallet: wallet)),
                );
              },
              child: Text('Go to Wallet'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              child: Text('Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionHistoryPage(wallet: wallet)),
                );
              },
              child: Text('Transaction History'),
            ),
          ],
        ),
      ),
    );
  }
}

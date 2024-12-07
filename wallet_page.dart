import 'package:flutter/material.dart';
import 'wallet_operations.dart'; // استيراد الفئة الخاصة بالعمليات

class WalletPage extends StatelessWidget {
  final WalletOperations wallet;

  WalletPage({required this.wallet});

  @override
  Widget build(BuildContext context) {
    double bitcoinBalance = wallet.getBalance('Bitcoin');
    double ethereumBalance = wallet.getBalance('Ethereum');

    return Scaffold(
      appBar: AppBar(title: Text('Your Webveli Wallet')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bitcoin Balance: $bitcoinBalance BTC', style: TextStyle(fontSize: 20)),
            Text('Ethereum Balance: $ethereumBalance ETH', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionPage(wallet: wallet)),
                );
              },
              child: Text('Manage Funds'),
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

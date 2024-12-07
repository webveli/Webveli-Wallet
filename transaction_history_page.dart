import 'package:flutter/material.dart';
import 'wallet_operations.dart'; // استيراد الفئة الخاصة بالعمليات

class TransactionHistoryPage extends StatelessWidget {
  final WalletOperations wallet;

  TransactionHistoryPage({required this.wallet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction History')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Transaction history will appear here', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            // يمكنك إضافة هنا قائمة المعاملات أو التفاصيل
            ElevatedButton(
              onPressed: () {
                // يمكن إضافة كود عرض المعاملات
              },
              child: Text('Show Transactions'),
            ),
          ],
        ),
      ),
    );
  }
}

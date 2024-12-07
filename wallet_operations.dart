class WalletOperations {
  double bitcoinBalance = 1.5; // رصيد البيتكوين كمثال
  double ethereumBalance = 3.0; // رصيد الإيثيريوم كمثال

  // إضافة الأموال
  void addFunds(String currency, double amount) {
    if (currency == 'Bitcoin') {
      bitcoinBalance += amount;
    } else if (currency == 'Ethereum') {
      ethereumBalance += amount;
    }
  }

  // سحب الأموال
  void removeFunds(String currency, double amount) {
    if (currency == 'Bitcoin' && bitcoinBalance >= amount) {
      bitcoinBalance -= amount;
    } else if (currency == 'Ethereum' && ethereumBalance >= amount) {
      ethereumBalance -= amount;
    } else {
      print("Insufficient funds");
    }
  }

  // عرض الرصيد
  double getBalance(String currency) {
    if (currency == 'Bitcoin') {
      return bitcoinBalance;
    } else if (currency == 'Ethereum') {
      return ethereumBalance;
    }
    return 0.0;
  }
}

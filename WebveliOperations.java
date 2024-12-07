public interface WebveliOperations {
    double getBalance(String currency);
    void addFunds(String currency, double amount);
    void removeFunds(String currency, double amount);
}

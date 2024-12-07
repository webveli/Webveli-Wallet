import java.util.HashMap;
import java.util.Map;

public class WebveliWallet {
    private Map<String, Double> balance;

    public WebveliWallet() {
        balance = new HashMap<>();
        balance.put("Bitcoin", 0.0);
        balance.put("Ethereum", 0.0);
    }

    public double getBalance(String currency) {
        return balance.getOrDefault(currency, 0.0);
    }

    public void addFunds(String currency, double amount) {
        balance.put(currency, balance.get(currency) + amount);
    }

    public void removeFunds(String currency, double amount) {
        double currentBalance = balance.get(currency);
        if (currentBalance >= amount) {
            balance.put(currency, currentBalance - amount);
        } else {
            System.out.println("Insufficient funds");
        }
    }
}

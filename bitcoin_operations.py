from bitcoinlib.wallets import Wallet

# إنشاء محفظة جديدة
def create_wallet():
    wallet = Wallet.create('WebveliWallet')
    print(f"Wallet Address: {wallet.get_key().address}")

# الحصول على الرصيد
def get_balance(wallet_name):
    wallet = Wallet(wallet_name)
    balance = wallet.balance()
    print(f"Balance: {balance}")
    return balance

# إرسال Bitcoin
def send_bitcoin(wallet_name, to_address, amount):
    wallet = Wallet(wallet_name)
    tx = wallet.send_to(to_address, amount)
    print(f"Transaction: {tx}")

if __name__ == "__main__":
    create_wallet()
    get_balance('WebveliWallet')
    send_bitcoin('WebveliWallet', 'recipient_address_here', 0.01)

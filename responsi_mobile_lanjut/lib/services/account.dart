class Account {
  String email;
  String password;

  Account({required this.email, required this.password});
}

class AccountService {
  static final List<Account> _accounts = [];

  // Register new account
  static bool register(String email, String password) {
    // Check if email already exists
    if (_accounts.any((account) => account.email == email)) {
      return false;
    }

    _accounts.add(Account(email: email, password: password));
    return true;
  }

  // Login
  static bool login(String email, String password) {
    return _accounts.any(
      (account) => account.email == email && account.password == password,
    );
  }
}

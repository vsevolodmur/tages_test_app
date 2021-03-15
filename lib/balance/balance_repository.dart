class BankNotes {
  Map<String, dynamic> banknotes = {
    '5000 рублей': 10,
    '2000 рублей': 100,
    '1000 рублей': 10,
    '500 рублей': 5,
    '200 рублей': 100,
    '100 рублей': 50,
  };

  static final BankNotes _balance = BankNotes._initializerFunction();

  factory BankNotes() {
    return _balance;
  }

  BankNotes._initializerFunction();
}

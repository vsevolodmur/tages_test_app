class BankNotes {
  Map<String, dynamic> banknotes = {
    '5000 рублей': 10,
    '2000 рублей': 100,
    '1000 рублей': 10,
    '500 рублей': 5,
    '200 рублей': 100,
    '100 рублей': 50,
  };

  getNotes(banknotes) => banknotes;

  updateNotes(newBalance) => getNotes(newBalance);

}

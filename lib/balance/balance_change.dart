import 'package:tages_test_app/balance/balance_repository.dart';

class BalanceChange {
  getChangedBalance(num requestedAmount) {
    Map bankNotesGiven = BankNotes().getNotes(BankNotes().banknotes);
    Map balance = BankNotes().getNotes(BankNotes().banknotes);
    List<num> bankLimitsList = [];
    num sum = 0;

    balance.forEach((key, value) {
      num bankNoteMoney =
          int.parse(key.toString().split(' ')[0]) * balance[key];
      bankLimitsList.add(bankNoteMoney);
    });

    bankLimitsList.forEach((num e) {
      sum += e;
    });

    if (sum < requestedAmount) {
      return 'No money';
    } else {
      balance.forEach((key, value) {
        int bankNoteDenom = int.parse(key.toString().split(' ')[0]);
        int bankNoteNeeded = requestedAmount ~/ bankNoteDenom;
        if (bankNoteNeeded > value) {
          requestedAmount = requestedAmount - value * bankNoteDenom;
          balance.update(key, (value) => value - value);
          bankNotesGiven.update(key, (value) => value);
        } else {
          requestedAmount = requestedAmount - bankNoteNeeded * bankNoteDenom;
          balance.update(key, (value) => value - bankNoteNeeded);
          bankNotesGiven.update(key, (value) => bankNoteNeeded);
        }
      });
      BankNotes().updateNotes(balance);
      return [balance, bankNotesGiven];
    }
  }
}

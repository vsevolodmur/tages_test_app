import 'package:tages_test_app/balance/balance_repository.dart';

class BalanceChange {
  getChangedBalance(num requestedAmount) {
    Map<dynamic, int> bankNotesGiven = {};
    Map balance = BankNotes().banknotes;
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

    if (sum >= requestedAmount) {
      balance.forEach((key, value) {
        int bankNoteDenom = int.parse(key.toString().split(' ')[0]);
        int bankNoteNeeded = requestedAmount ~/ bankNoteDenom;
        if (bankNoteNeeded > value) {
          requestedAmount = requestedAmount - value * bankNoteDenom;
          balance.update(key, (value) => value - value);
          bankNotesGiven.putIfAbsent(key, () => value);
        } else {
          requestedAmount = requestedAmount - bankNoteNeeded * bankNoteDenom;
          balance.update(key, (value) => value - bankNoteNeeded);
          bankNotesGiven.putIfAbsent(key, () => bankNoteNeeded);
        }
      });
      sum = 0;
      bankNotesGiven.values.forEach((num e) {
        sum += e;
      });
      if (sum == 0){
        return 0; 
      }

      return [balance, bankNotesGiven];
    } else {
      return 'No money';
    }
  }
}

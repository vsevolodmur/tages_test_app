import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tages_test_app/balance/balance_change.dart';
import 'package:tages_test_app/balance/balance_repository.dart';

part 'balance_event.dart';
part 'balance_state.dart';

class BalanceBloc extends Bloc<BalanceEvent, BalanceState> {
  BalanceBloc(BankNotes balanceRepository)
      : super(BalanceInitial(BankNotes().banknotes));

  @override
  Stream<BalanceState> mapEventToState(
    BalanceEvent event,
  ) async* {
    if (event is ChangeBalanceEvent) {
      final _loadedBalance =
          BalanceChange().getChangedBalance(event.requestedAmount);
      if (_loadedBalance is String) {
        yield NoMoneyState(BankNotes().banknotes);
      }
      if (_loadedBalance is int) {
        yield NoBankNoteNominalState(BankNotes().banknotes);
      }
      // if (_loadedBalance[1] == 0) {
      //   yield NoBankNoteNominalState();
      // } 
      else {
        yield ChangedBalanceState(availableBankNotes: _loadedBalance);
      }
    }
  }
}

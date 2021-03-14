import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tages_test_app/balance/balance_change.dart';
import 'package:tages_test_app/balance/balance_repository.dart';

part 'balance_event.dart';
part 'balance_state.dart';

class BalanceBloc extends Bloc<BalanceEvent, BalanceState> {
  final BankNotes balanceRepository;

  BalanceBloc(this.balanceRepository) : super(BalanceInitial());

  @override
  Stream<BalanceState> mapEventToState(
    BalanceEvent event,
  ) async* {
    if (event is ChangeBalanceEvent) {
      final _loadedBalance = BalanceChange()
          .getChangedBalance(BankNotes().banknotes, event.requestedAmount);

      yield ChangedBalanceState(availableBankNotes: _loadedBalance);
    }
  }
}

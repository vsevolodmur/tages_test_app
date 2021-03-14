part of 'balance_bloc.dart';

abstract class BalanceState {}

class BalanceInitial extends BalanceState {
  final Map notes;
  BalanceInitial(this.notes);
}

class ChangedBalanceState extends BalanceState {
  dynamic availableBankNotes;
  ChangedBalanceState({@required this.availableBankNotes});
}

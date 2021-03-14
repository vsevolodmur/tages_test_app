part of 'balance_bloc.dart';

abstract class BalanceEvent {}

class GetRequestedAmount extends BalanceEvent {
  final int requestedAmount;
  GetRequestedAmount(this.requestedAmount);
}

class ChangeBalanceEvent extends BalanceEvent {
  final int requestedAmount;
  ChangeBalanceEvent(this.requestedAmount);
}

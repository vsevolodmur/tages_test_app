part of 'readiness_bloc.dart';

abstract class ReadinessState {}

class ReadinessInitial extends ReadinessState {}

class NoMoneyState extends ReadinessState {
  final String textToShow;
  NoMoneyState({@required this.textToShow});
}

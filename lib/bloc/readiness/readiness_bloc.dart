import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tages_test_app/services/readiness_repository.dart';

part 'readiness_event.dart';
part 'readiness_state.dart';

class ReadinessBloc extends Bloc<ReadinessEvent, ReadinessState> {
  final ReadyRepository readyRepository;
  ReadinessBloc(this.readyRepository) : super(ReadinessInitial());

  @override
  Stream<ReadinessState> mapEventToState(
    ReadinessEvent event,
  ) async* {
    if (event is NoMoneyEvent){
      final String _textToShow = ReadyRepository().getNoMoneyText();
      yield NoMoneyState(textToShow: _textToShow);
      
    }
  }
}

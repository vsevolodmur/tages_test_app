import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_test_app/balance/bloc/balance_bloc.dart';

class BankNoteStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BalanceBloc, BalanceState>(
      // ignore: missing_return
      builder: (context, state) {
        if (state is BalanceInitial) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Баланс банкомата',
                      style: TextStyle(fontSize: 15, color: Color(0xffA3A2AC)),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.notes['100 рублей']} x 100 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.notes['200 рублей']} x 200 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.notes['500 рублей']} x 500 рублей'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.notes['1000 рублей']} x 1000 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.notes['2000 рублей']} x 2000 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.notes['5000 рублей']} x 5000 рублей'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        if (state is ChangedBalanceState) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Баланс банкомата',
                      style: TextStyle(fontSize: 15, color: Color(0xffA3A2AC)),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.availableBankNotes['100 рублей']} x 100 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.availableBankNotes['200 рублей']} x 200 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.availableBankNotes['500 рублей']} x 500 рублей'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.availableBankNotes['1000 рублей']} x 1000 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.availableBankNotes['2000 рублей']} x 2000 рублей'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${state.availableBankNotes['5000 рублей']} x 5000 рублей'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}




    
      
 

// Text(
//             state.notes.toString(),
//             textAlign: TextAlign.center,
//             maxLines: 2,
//             style: TextStyle(
//               color: Color(0xffE61EAD),
//             ),
//           );
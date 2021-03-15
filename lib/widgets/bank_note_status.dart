import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_test_app/balance/balance_repository.dart';
import 'package:tages_test_app/balance/bloc/balance_bloc.dart';

class BankNoteStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map _bankNotes = BankNotes().banknotes;
    return BlocBuilder<BalanceBloc, BalanceState>(
      // ignore: missing_return
      builder: (context, state) {
        if (state is BalanceInitial || state is NoMoneyState) {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${_bankNotes['100 рублей']} X 100 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${_bankNotes['200 рублей']} X 200 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${_bankNotes['2000 рублей']} X 2000 рублей'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${_bankNotes['500 рублей']} X 500 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${_bankNotes['1000 рублей']} X 1000 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${_bankNotes['5000 рублей']} X 5000 рублей'),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${state.availableBankNotes[0]['100 рублей']} X 100 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${state.availableBankNotes[0]['200 рублей']} X 200 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${state.availableBankNotes[0]['2000 рублей']} X 2000 рублей'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${state.availableBankNotes[0]['500 рублей']} X 500 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${state.availableBankNotes[0]['1000 рублей']} X 1000 рублей'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                    '${state.availableBankNotes[0]['5000 рублей']} X 5000 рублей'),
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
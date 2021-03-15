import 'package:flutter/material.dart';
import 'package:tages_test_app/balance/bloc/balance_bloc.dart';
import 'package:tages_test_app/widgets/bank_note_status.dart';
import 'package:tages_test_app/widgets/body_top_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenBody extends StatelessWidget {
  final _textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks

    return SingleChildScrollView(
      child: Column(
        children: [
          BodyTop(),
          Container(
            height: MediaQuery.of(context).devicePixelRatio * 5,
            color: Color(0xff3827B4).withOpacity(0.06),
          ),
          // ignore: missing_return
          BlocBuilder<BalanceBloc, BalanceState>(builder: (context, state) {
            if (state is BalanceInitial) {
              return Container(
                height: MediaQuery.of(context).devicePixelRatio * 30,
                child: Center(
                    child: Text(
                  'Банкомат готов к выдаче наличных',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      color: Color(0xffE61EAD),
                      fontSize: _textSize,
                      fontWeight: FontWeight.normal),
                )),
              );
            }
            if (state is NoMoneyState) {
              return Container(
                height: MediaQuery.of(context).devicePixelRatio * 30,
                child: Center(
                    child: Text(
                  'Банкомат не может выдать запрашиваемую сумму',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      color: Color(0xffE61EAD),
                      fontSize: _textSize,
                      fontWeight: FontWeight.normal),
                )),
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
                          'Банкомат выдал следующие купюры',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffA3A2AC),
                              fontWeight: FontWeight.normal),
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
                                        '${state.availableBankNotes[1]['100 рублей']} X 100 рублей'),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                        '${state.availableBankNotes[1]['200 рублей']} X 200 рублей'),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                        '${state.availableBankNotes[1]['2000 рублей']} X 2000 рублей'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 65,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                        '${state.availableBankNotes[1]['500 рублей']} X 500 рублей'),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                        '${state.availableBankNotes[1]['1000 рублей']} X 1000 рублей'),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                        '${state.availableBankNotes[1]['5000 рублей']} X 5000 рублей'),
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
          }),
          Container(
            height: MediaQuery.of(context).devicePixelRatio * 5,
            color: Color(0xff3827B4).withOpacity(0.06),
          ),
          Container(
            height: MediaQuery.of(context).devicePixelRatio * 50,
            alignment: Alignment.center,
            child: BankNoteStatus(),
          ),
          Container(
            height: MediaQuery.of(context).devicePixelRatio * 5,
            color: Color(0xff3827B4).withOpacity(0.06),
          ),
        ],
      ),
    );
  }
}

              // child: BlocBuilder<BalanceBloc, BalanceState>(
              //   // ignore: missing_return
              //   builder: (context, state) {
              //     if (state is BalanceInitial) {
              //       return Text(
              //         'Банкомат готов к выдаче наличных',
              //         textAlign: TextAlign.center,
              //         maxLines: 2,
              //         style: TextStyle(
              //           color: Color(0xffE61EAD),
              //           fontSize: _textSize,
              //         ),
              //       );
              //     }
              //     if (state is ChangedBalanceState) {
              //       return Text(
              //         state.availableBankNotes.toString(),
              //         textAlign: TextAlign.center,
              //         maxLines: 2,
              //         style: TextStyle(
              //           color: Color(0xffE61EAD),
              //           fontSize: _textSize,
              //         ),
              //       );
              //     }
              //   },
              // ),
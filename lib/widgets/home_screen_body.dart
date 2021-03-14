import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_test_app/balance/bloc/balance_bloc.dart';
import 'package:tages_test_app/widgets/bank_note_status.dart';
import 'package:tages_test_app/widgets/body_top_container.dart';

class HomeScreenBody extends StatelessWidget {
  final _textSize = 20.0;
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final BalanceBloc balanceBloc = BlocProvider.of<BalanceBloc>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              BodyTop(),
              Container(
                height: MediaQuery.of(context).devicePixelRatio * 50,
                width: MediaQuery.of(context).devicePixelRatio * 80,
                padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                child: FloatingActionButton.extended(
                  backgroundColor: Color(0xffE61EAD),
                  onPressed: () => {},
                  label: Text(
                    'Выдать сумму',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).devicePixelRatio * 5,
            color: Color(0xff3827B4).withOpacity(0.06),
          ),
          Container(
            height: MediaQuery.of(context).devicePixelRatio * 30,
            child: Center(
              child: BlocBuilder<BalanceBloc, BalanceState>(
                // ignore: missing_return
                builder: (context, state) {
                  if (state is BalanceInitial) {
                    return Text(
                      'Банкомат готов к выдаче наличных',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xffE61EAD),
                        fontSize: _textSize,
                      ),
                    );
                  }
                  if (state is ChangedBalanceState) {
                    return Text(
                      state.availableBankNotes.toString(),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xffE61EAD),
                        fontSize: _textSize,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
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


//onChanged: (text) => print(text),
// validator: (input) => 'sadasd',
// onSaved: (input) => print('input'),

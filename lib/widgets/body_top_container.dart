import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_test_app/balance/bloc/balance_bloc.dart';

class BodyTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final BalanceBloc balanceBloc = BlocProvider.of<BalanceBloc>(context);
    String data;
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).devicePixelRatio * 55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Background.png'),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Введите сумму',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: TextField(
                            onChanged: (String text) {
                              data = text;
                              return data;
                            },
                            cursorRadius: Radius.circular(5),
                            style: TextStyle(
                              fontSize: 36,
                              color: Color(0xffFFFFFF),
                            ),
                            cursorHeight: 36,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: '1234.00 руб',
                              hintStyle: TextStyle(
                                fontSize: 36,
                                color: Color(0xffFFFFFF),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffE61EAD),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).devicePixelRatio * 50,
          width: MediaQuery.of(context).devicePixelRatio * 80,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
          child: FloatingActionButton.extended(
            backgroundColor: Color(0xffE61EAD),
            onPressed: () {
              if (data != null) {
                balanceBloc.add(ChangeBalanceEvent(int.parse(data)));
              }
            },
            label: Text(
              'Выдать сумму',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

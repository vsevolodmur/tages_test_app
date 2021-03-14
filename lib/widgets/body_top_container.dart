import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_test_app/balance/bloc/balance_bloc.dart';

class BodyTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BalanceBloc balanceBloc = BlocProvider.of<BalanceBloc>(context);
    final textController = TextEditingController();
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).devicePixelRatio * 60,
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
                        onSubmitted: (String text) => balanceBloc
                            .add(ChangeBalanceEvent(int.parse(text))),
                        controller: textController,
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
    );
  }
}

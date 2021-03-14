import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tages_test_app/balance/balance_change.dart';
import 'package:tages_test_app/balance/balance_repository.dart';
import 'package:tages_test_app/balance/bloc/balance_bloc.dart';
import 'package:tages_test_app/widgets/home_screen_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final balanceRepository = BankNotes();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Group.png'),
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              child: Image.asset('assets/images/ActionBar.png'),
            ),
          ),
        ),
        body: BlocProvider<BalanceBloc>(
          create: (context) => BalanceBloc(balanceRepository),
          child: HomeScreenBody(),
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).devicePixelRatio * 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/Background_bottom.png'),
            ),
          ),
        ),
      ),
    );
  }
}



// ListView.separated(
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               child: Column(
//                 children: [
//                   Container(
//                     height: 200,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.fill,
//                         image: AssetImage('assets/images/Background.png'),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 15),
//                     child: FloatingActionButton.extended(
//                       backgroundColor: Colors.purple,
//                       onPressed: () => {},
//                       label: Text('Выдать сумму'),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//           separatorBuilder: (BuildContext context, int index) => Container(
//                 height: 10,
//                 color: Colors.red,
//               ),
//           itemCount: 6),

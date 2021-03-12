import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/Background.png'),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.purple,
                    onPressed: () => {},
                    label: Text('Выдать сумму'),
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
              color: Colors.grey[100],
            ),
            Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Банкомат не может выдать ',
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    'запрашиваемую сумму',
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey[100],
            ),
            Container(
              height: 150,
              alignment: Alignment.center,
              child: Text('MOney text'),
            ),
            Container(
              height: 20,
              color: Colors.grey[100],
            ),
          ],
        ));
  }
}

// children: [
//         Column(
//           children: [
//             Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image: AssetImage('assets/images/Background.png'),
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 15),
//               color: Colors.white,
//               child: FloatingActionButton.extended(
//                 backgroundColor: Colors.purple,
//                 onPressed: () => {},
//                 label: Text('Выдать сумму'),
//               ),
//             ),
//           ],
//         ),

//       ]

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

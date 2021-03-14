import 'package:flutter/material.dart';

class BankNoteStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Баланс банкомата',
                style: TextStyle(
                  fontSize: 15,color: Color(0xffA3A2AC)
                ),
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
                          child: Text('100 x 200 рублей'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('100 x 200 рублей'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('100 x 2000 рублей'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('5 x 500 рублей'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('10 x 1000 рублей'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('10 x 5000 рублей'),
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
}

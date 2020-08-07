import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final count;
  final total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = '';
    Widget img;
    if (0 <= count && count <= 1) {
      message = 'Да ты тупой, дружище';
      img = Image.asset('assets/images/dumb.jpeg');
    } else if (2 <= count && count <= 4) {
      message = 'Тянешь на мидла';
      img = Image.asset('assets/images/medium.png');
    } else {
      message = 'Жжош, сцуко';
      img = Image.asset('assets/images/not_dumb.jpg');
    }

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 15,
                  spreadRadius: 0,
                  offset: Offset(2, 5))
            ],
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: <Color>[
              Color(0xFF5337ff),
              Color(0xFF8131ff),
              Color(0xFFbd27ff),
            ])),
        child: Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              child: FittedBox(
                fit: BoxFit.contain,
                child: img,
              ),
            ),
            Container(
              child: Text(
                message,
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Text('Верно ответил на $count из $total'),
            Divider(
              color: Colors.white,
            ),
            FlatButton(
              child: Text(
                'Начать сначала',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              onPressed: onClearState,
            )
          ],
        ));
  }
}

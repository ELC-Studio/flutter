// import 'package:flutter/widgets.dart';
// import 'dart:math';

// main() => runApp(App());

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       child: Container(
//         child: ListScreen(),
//         color: Color(0xFF386DA7),
//       ),
//       textDirection: TextDirection.ltr,
//     );
//   }
// }

// class ListScreen extends StatelessWidget {
//   final double cellSize = 60;
//   final itemsAmount = 1000000000000;
//   final rng = new Random();

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: itemsAmount,
//       itemExtent: cellSize,
//       itemBuilder: (BuildContext context, int index) {
//         return ListView.builder(
//           itemCount: itemsAmount,
//           itemExtent: cellSize,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               color: Color(0xFF000000 + rng.nextInt(0xFFFFFF)),
//               child: Text(rng.nextInt(0xFFFFFF).toRadixString(16)),
//             );
//           },
//         );
//       },
//     );
//   }
// }

// Two-Words stuff generation with infinite scroll enabled

// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Startup Name Generator',
//       home: RandomWords(),
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = TextStyle(fontSize: 18.0);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Проверка'),
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//         padding: EdgeInsets.all(16.0),
//         itemBuilder: (context, i) {
//           if (i.isOdd) return Divider();

//           final index = i ~/ 2;
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10));
//           }
//           return _buildRow(_suggestions[index]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//     );
//   }
// }

// End of Two-Words app

import 'package:flutter/material.dart';
import "package:flutter/rendering.dart" show debugPaintSizeEnabled;
import 'package:flutter_tests/screens/homeScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WoW Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.openSansCondensedTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

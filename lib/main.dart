import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController inputOne = TextEditingController();
  TextEditingController inputTwo = TextEditingController();

  String output = '0';

  @override
  Widget build(BuildContext context) {
    //to make width follow the phone size
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 300,
            width: width,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '$output',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
          ),
          //=================== Done First Column ==========================//
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButton(
                      title: 'AC',
                      color: Colors.grey,
                      textColor: Colors.black,
                    ),
                    CircleButton(
                      title: '+/-',
                      color: Colors.grey,
                      textColor: Colors.black,
                    ),
                    CircleButton(
                      title: '&',
                      color: Colors.grey,
                      textColor: Colors.black,
                    ),
                    CircleButton(
                      title: '÷',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                //=================== Done Second Column ==========================//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButton(
                      title: '7',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '8',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '9',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: 'x',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                //=================== Done Third Column ==========================//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButton(
                      title: '4',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '5',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '6',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '-',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                //=================== Done Forth Column ==========================//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButton(
                      title: '1',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '2',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '3',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '+',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                //=================== Done Fifth Column ==========================//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: RectButton(
                        title: '0',
                        color: Colors.grey.shade800,
                        textColor: Colors.white,
                      ),
                    ),
                    CircleButton(
                      title: '.',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                    CircleButton(
                      title: '=',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                //=================== Done Sixth Column ==========================//
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;

  CircleButton(
      {required this.title, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 9;
    return Container(
      height: height,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: CircleBorder(),
          ),
        ),
      ),
    );
  }
}

class RectButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;

  RectButton(
      {required this.title, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 8;
    return Container(
      height: height,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}

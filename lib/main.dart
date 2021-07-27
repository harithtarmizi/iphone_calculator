import 'package:flutter/material.dart';

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
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //to make width follow the phone size
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 300,
            width: width,
            color: Colors.green,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '123',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

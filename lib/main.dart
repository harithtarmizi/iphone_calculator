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
                inputOne.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
          ),
          //=================== Done First Column ==========================//
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButton(
                      title: 'C',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped Clear');

                        setState(() {
                          inputOne.text = '';
                        });
                      },
                    ),
                    CircleButton(
                      title: 'D',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('+/-');

                        setState(() {
                          inputOne.text = inputOne.text
                              .substring(0, inputOne.text.length - 1);
                        });
                      },
                    ),
                    CircleButton(
                      title: '%',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped %');
                        var x = double.parse(inputOne.text);

                        var z = x / 100;

                        setState(() {
                          inputOne.text = z.toString();
                        });
                      },
                    ),
                    CircleButton(
                      title: '÷',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped ÷');

                        setState(() {
                          inputOne.text = inputOne.text + '÷';
                        });
                      },
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
                      onTap: () {
                        print('Tapped 7');

                        setState(() {
                          inputOne.text = inputOne.text + '7';
                        });
                      },
                    ),
                    CircleButton(
                      title: '8',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped 8');

                        setState(() {
                          inputOne.text = inputOne.text + '8';
                        });
                      },
                    ),
                    CircleButton(
                      title: '9',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped 9');

                        setState(() {
                          inputOne.text = inputOne.text + '9';
                        });
                      },
                    ),
                    CircleButton(
                      title: 'x',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped x');

                        setState(() {
                          inputOne.text = inputOne.text + 'x';
                        });
                      },
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
                      onTap: () {
                        print('Tapped 4');

                        setState(() {
                          inputOne.text = inputOne.text + '4';
                        });
                      },
                    ),
                    CircleButton(
                      title: '5',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped 5');

                        setState(() {
                          inputOne.text = inputOne.text + '5';
                        });
                      },
                    ),
                    CircleButton(
                      title: '6',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped 6');

                        setState(() {
                          inputOne.text = inputOne.text + '6';
                        });
                      },
                    ),
                    CircleButton(
                      title: '-',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped -');

                        setState(() {
                          inputOne.text = inputOne.text + '-';
                        });
                      },
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
                      onTap: () {
                        print('Tapped 1');

                        setState(() {
                          inputOne.text = inputOne.text + '1';
                        });
                      },
                    ),
                    CircleButton(
                      title: '2',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped 2');

                        setState(() {
                          inputOne.text = inputOne.text + '2';
                        });
                      },
                    ),
                    CircleButton(
                      title: '3',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped 3');

                        setState(() {
                          inputOne.text = inputOne.text + '3';
                        });
                      },
                    ),
                    CircleButton(
                      title: '+',
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped +');

                        setState(() {
                          inputOne.text = inputOne.text + '+';
                        });
                      },
                    ),
                  ],
                ),
                //=================== Done Fifth Column ==========================//
                Row(
                  children: [
                    Expanded(
                      child: RectButton(
                        title: '0',
                        color: Colors.grey.shade800,
                        textColor: Colors.white,
                        onTap: () {
                          print('Tapped 0');

                          setState(() {
                            inputOne.text = inputOne.text + '0';
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: CircleButton(
                        title: '.',
                        color: Colors.grey.shade800,
                        textColor: Colors.white,
                        onTap: () {
                          print('Tapped .');

                          setState(() {
                            inputOne.text = inputOne.text + '.';
                          });
                        },
                      ),
                    ),
                    CircleButton(
                      title: '=',
                      color: Colors.grey.shade800,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped =');

                        if (inputOne.text.contains('+')) {
                          var data = inputOne.text.split('+');

                          var x = double.parse(data[0]);
                          var y = double.parse(data[1]);
                          var z = x + y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        } else if (inputOne.text.contains('-')) {
                          var data = inputOne.text.split('-');

                          var x = double.parse(data[0]);
                          var y = double.parse(data[1]);
                          var z = x - y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        } else if (inputOne.text.contains('x')) {
                          var data = inputOne.text.split('x');

                          var x = double.parse(data[0]);
                          var y = double.parse(data[1]);
                          var z = x * y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        } else if (inputOne.text.contains('÷')) {
                          var data = inputOne.text.split('÷');

                          var x = double.parse(data[0]);
                          var y = double.parse(data[1]);
                          var z = x / y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        }
                      },
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
  final GestureTapCallback onTap;

  CircleButton(
      {required this.title,
      required this.color,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 10;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: height,
        child: ElevatedButton(
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
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
  final GestureTapCallback onTap;

  RectButton(
      {required this.title,
      required this.color,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 10;
    return Container(
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
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

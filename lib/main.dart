import 'package:calculator3/button.dart';
import 'package:calculator3/calculation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: MyCalculator(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  var calculation = Calculation();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0.0),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.3,
              width: width,
              child: Card(
                color: Colors.white,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        calculation.firstOperand,
                        style: const TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        calculation.secondOperand,
                        style: const TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: width,
              height: height * 0.6,
              // color: Colors.green,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text('AC',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    )),
                              ),
                              onPressed: () {
                                setState(() {
                                  calculation.firstOperand = '';
                                  calculation.secondOperand = '';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('÷',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0,
                                      ))),
                              onPressed: () {
                                if (calculation.secondOperand.isNotEmpty) {
                                  setState(() {
                                    calculation.firstOperand =
                                        calculation.secondOperand + '÷';
                                    calculation.operator = '÷';
                                    calculation.secondOperand = '';

                                  });
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('%',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ))),
                              onPressed: () {
                                if (calculation.secondOperand.isNotEmpty) {
                                  setState(() {
                                    var percent =
                                        num.parse(calculation.secondOperand) /
                                            100;
                                    calculation.firstOperand =
                                        percent.toString();
                                  });
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Icon(
                                Icons.backspace_outlined,
                                color: Colors.blue,
                                size: 20.0,
                              )),
                              onPressed: () {
                                if (calculation.secondOperand.isNotEmpty) {
                                  setState(() {
                                    calculation.secondOperand =
                                        calculation.secondOperand.substring(
                                            0,
                                            calculation.secondOperand.length -
                                                1);
                                  });
                                }
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('7',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ))),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '7';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('8',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ))),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '8';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('9',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ))),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '9';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('X',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ))),
                              onPressed: () {
                                if (calculation.secondOperand.isNotEmpty) {
                                  setState(() {
                                    calculation.firstOperand =
                                        calculation.secondOperand + 'x';
                                    calculation.operator = 'x';
                                    calculation.secondOperand = '';

                                  });
                                }
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('4',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ))),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '4';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('5',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ))),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '5';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '6';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                  child: Text('-',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0,
                                      ))),
                              onPressed: () {
                                if (calculation.secondOperand.isNotEmpty) {
                                  setState(() {
                                    calculation.firstOperand =
                                        calculation.secondOperand + '-';
                                    calculation.operator = '-';
                                    calculation.secondOperand = '';

                                  });
                                }
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '3';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '2';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '1';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (calculation.secondOperand.isNotEmpty) {
                                  setState(() {
                                    calculation.firstOperand =
                                        calculation.secondOperand + '+';
                                    calculation.operator = '+';
                                    calculation.secondOperand = '';

                                  });
                                }
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  calculation.secondOperand =
                                      calculation.secondOperand + '0';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '+/-',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (calculation.secondOperand.isNotEmpty) {
                                  setState(() {
                                    calculation.firstOperand =
                                        (num.parse(calculation.secondOperand) *
                                                -1)
                                            .toString();
                                  });
                                } else {
                                  setState(() {
                                    calculation.secondOperand = '-';
                                  });
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text('.',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                    )),
                              ),
                              onPressed: () {
                                if (calculation.secondOperand.contains('.')) {
                                  return null;
                                } else {
                                  setState(() {
                                    calculation.secondOperand =
                                        calculation.secondOperand + '.';
                                  });
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Expanded(
                            child: MyButton(
                              childWidget: const FittedBox(
                                child: Text(
                                  '=',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (calculation.secondOperand.toString().isNotEmpty &&
                                    calculation.firstOperand.toString().isNotEmpty) {
                                  setState(() {
                                    calculation.operatorFun();
                                  });
                                }
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

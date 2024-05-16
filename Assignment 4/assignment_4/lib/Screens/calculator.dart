import 'package:assignment_4/components/calculatorButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userQuestion = "";
  var userAnswer = "";
  final List<String> buttons = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "ANS",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 209, 196, 233),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        userQuestion,
                        style: GoogleFonts.poppins(
                            fontSize: 50, fontWeight: FontWeight.w600),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: GoogleFonts.poppins(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return CalcButton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion = "";
                            userAnswer = "";
                          });
                        },
                        buttonText: buttons[index],
                        color: Color.fromARGB(255, 88, 36, 199),
                        textColor: const Color.fromARGB(255, 188, 15, 15),
                      );
                    } else if (index == 1) {
                      return CalcButton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion = userQuestion.substring(
                              0,
                              userQuestion.length - 1,
                            );
                          });
                        },
                        buttonText: buttons[index],
                        color: const Color.fromARGB(255, 208, 205, 205),
                        textColor: Color.fromARGB(255, 74, 14, 214),
                      );
                    } else if (index == buttons.length - 1) {
                      return CalcButton(
                        buttonTapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                      );
                    } else {
                      return CalcButton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? Colors.deepPurple
                            : Colors.deepPurple[50],
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Color.fromARGB(255, 22, 6, 6),
                      );
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == "%" || x == "/" || x == "x" || x == "-" || x == "+" || x == "=") {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finalQuesion = userQuestion;
    finalQuesion = finalQuesion.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finalQuesion);
    ContextModel cm = ContextModel();
    userQuestion = "";

    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }
}

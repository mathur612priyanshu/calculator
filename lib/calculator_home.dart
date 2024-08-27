import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String number1 = "";
  String operand = "";
  String number2 = "";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      //output section
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            // output section
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          reverse: true,
                          child: Container(
                            // width: (screenSize.width / 6) * 5,
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "$number1$operand$number2".isEmpty
                                  ? "0"
                                  : "$number1$operand$number2",
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: delete,
                          icon: Icon(Icons.backspace_outlined),
                          color: Color.fromARGB(150, 51, 135, 52),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                  width: 1,
                  color: Color.fromARGB(137, 105, 105, 105),
                ))),
                margin: EdgeInsets.all(5),
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Wrap(
                    children: Btn.buttonValues
                        .map((value) => SizedBox(
                            width: (screenSize.width / 4.5),
                            height: screenSize.width / 4.5,
                            child: buildButton(value)))
                        .toList(),
                  ),
                ),
              )
            ],

            // keypad section
          ),
        ),
      ),
    );
  }

  Widget buildButton(value) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: getBtnColor(value),
        borderRadius: BorderRadius.circular(50),
        // shape: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(100),
        //     borderSide: BorderSide(color: Colors.white24)),
        child: InkWell(
          onTap: () => onBtnTap(value),
          child: Center(
              child: Text(
            value,
            style: TextStyle(
                fontSize: value == Btn.equal ? 40 : 30,
                fontWeight: FontWeight.bold,
                color: value == Btn.clr
                    ? Colors.redAccent
                    : [
                        Btn.add,
                        Btn.bracket,
                        Btn.divide,
                        Btn.multiply,
                        Btn.per,
                        Btn.subtract
                      ].contains(value)
                        ? Color.fromARGB(255, 3, 226, 11)
                        : Colors.white),
          )),
        ),
      ),
    );
  }

  void onBtnTap(String value) {
    if (value == Btn.bracket) {
      bracket();
      return;
    }
    if (value == Btn.clr) {
      clearAll();
      return;
    }
    if (value == Btn.per) {
      convertToPercentage();
      return;
    }
    if (value == Btn.equal) {
      calculate();
      return;
    }
    if (value == Btn.plusMinus) {
      plusMinus();
    }
    appendValue(value);
  }

  void plusMinus() {
    if (operand.isEmpty || number1.isEmpty) {
      number1 = "(-" + number1;
    } else if (operand.isNotEmpty) {
      number2 = "(-" + number2;
    }
    setState(() {});
  }

  void bracket() {
    if (number1.isEmpty || number1[number1.length - 1] == "(") {
      number1 += "(";
    } else if (number1.contains("(") &&
        int.tryParse(number1[number1.length - 1]) != null) {
      number1 += ")";
    } else if (number2.isEmpty || number2[number2.length - 1] == "(") {
      operand = Btn.multiply;
      number2 += "(";
    } else {
      number2 += ")";
    }
    setState(() {});
  }

  void calculate() {
    if (number1.isEmpty) {
      return;
    }
    if (operand.isEmpty) return;
    if (number2.isEmpty) return;
    if (number1.contains("(")) {
      if (number1.contains(")"))
        number1 = number1.substring(1, number1.length - 1);
      else
        number1 = number1.substring(1, number1.length);
    }
    if (number2.contains("(")) {
      if (number2.contains(")"))
        number2 = number2.substring(1, number2.length - 1);
      else
        number2 = number2.substring(1, number2.length);
    }
    double num1 = double.parse(number1);
    double num2 = double.parse(number2);
    var result = 0.0;
    switch (operand) {
      case Btn.add:
        result = num1 + num2;
        break;
      case Btn.subtract:
        result = num1 - num2;
        break;
      case Btn.multiply:
        result = num1 * num2;
        break;
      case Btn.divide:
        result = num1 / num2;
        break;
      default:
    }
    setState(() {
      number1 = "$result";
      if (number1.endsWith(".0")) {
        number1 = number1.substring(0, number1.length - 2);
      }
      operand = "";
      number2 = "";
    });
  }

  void convertToPercentage() {
    if (number1.isNotEmpty && operand.isNotEmpty && number2.isNotEmpty) {
      calculate();
    }
    if (operand.isNotEmpty) {
      return;
    }
    final number = double.parse(number1);
    setState(() {
      number1 = "${(number / 100)}";
      operand = "";
      number2 = "";
    });
  }

  void clearAll() {
    number1 = "";
    operand = "";
    number2 = "";
    setState(() {});
  }

  void delete() {
    if (number2.isNotEmpty) {
      number2 = number2.substring(0, number2.length - 1);
    } else if (operand.isNotEmpty) {
      operand = "";
    } else if (number1.isNotEmpty) {
      number1 = number1.substring(0, number1.length - 1);
    }
    setState(() {});
  }

  void appendValue(String value) {
    if (value != Btn.dot && int.tryParse(value) == null) {
      if (value == Btn.plusMinus) {
        // plusMinus();
        return;
      } else if (operand.isNotEmpty && number2.isNotEmpty) {
        calculate();
      }
      operand = value;
    } else if (number1.isEmpty || operand.isEmpty) {
      if (value == Btn.dot && number1.contains(Btn.dot)) {
        return;
      }
      if (value == Btn.dot && (number1.isEmpty || number1 == Btn.dot)) {
        value = "0.";
      }
      number1 += value;
    } else if (number2.isEmpty || operand.isNotEmpty) {
      if (value == Btn.dot && number2.contains(Btn.dot)) {
        return;
      }
      if (value == Btn.dot && (number2.isEmpty || number2 == Btn.dot)) {
        value = "0.";
      }
      number2 += value;
    }

    setState(() {});
  }

  Color getBtnColor(value) {
    return value == Btn.equal
        ? Color.fromARGB(167, 4, 194, 10)
        : Color.fromARGB(255, 28, 28, 28);
    // [Btn.bracket, Btn.clr].contains(value)
    //     ? Colors.blueGrey
    //     : [
    //         Btn.bracket,
    //         Btn.add,
    //         Btn.divide,
    //         Btn.multiply,
    //         Btn.equal,
    //         Btn.per,
    //         Btn.subtract
    //       ].contains(value)
    //         ? Colors.orangeAccent
    //         : Colors.black87;
  }
}

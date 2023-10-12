// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

List<String> first_stringList = [];
List<String> second_stringList = [];
int combinedInteger = 0;
int first_num = 0;
int second_num = 0;
String numberAsString1 = "0";
String numberAsString2 = "";
String operand = " ";
String flago = "false";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Result(),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList = [];
                          second_stringList = [];
                          combinedInteger = 0;
                          first_num = 0;
                          second_num = 0;
                          numberAsString1 = "0";
                          operand = "";
                          flago = "false";
                          Result();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "AC",
                            style: TextStyle(
                              fontSize: 38,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.removeLast();
                          try {
                            processing();
                          } finally {
                            // Always clean up, even if an exception is thrown.
                            String numberAsString2 = "0";
                            Result();
                          }
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Del",
                            style: TextStyle(fontSize: 38),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "%",
                            style: TextStyle(fontSize: 42),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          operand = "÷";
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade700,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "÷",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('7');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24, shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('8');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('9');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          operand = "x";
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade700,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "x",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('4');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('5');
                          print(first_stringList);
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('6');
                          print(first_stringList);
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          operand = "-";
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade700,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('1');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('2');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('3');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          operand = "+";
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade700,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          first_stringList.add('0');
                          print(first_stringList);
                          processing();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 176,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, top: 15),
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            ".",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          calculation();
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade700,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "=",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Result() {
  return Container(
    height: 270,
    width: double.infinity,
    color: Colors.black,
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text(
        "${numberAsString1} ${operand} ${numberAsString2}",
        style: TextStyle(fontSize: 100, color: Colors.white),
      ),
    ),
  );
}

void processing() {
  if (flago == "false") {
    int first_num = int.parse(first_stringList.join(''));
    numberAsString1 = first_num.toString();
    print(numberAsString1);
  } else if (operand != " ") {
    if (flago == "true") {
      second_stringList = first_stringList;
      int second_num = int.parse(second_stringList.join(''));
      numberAsString2 = second_num.toString();
      print(numberAsString1);

      //swapping
      dynamic temp = first_num;
      first_num = second_num;
      second_num = temp;
      void calculation() {
  if (operand == "+") {
    second_num = first_num + second_num;
  }
  if (operand == "-") {
    second_num = first_num - second_num;
  }
  if (operand == "x") {
    second_num = first_num * second_num;
  }
  if (operand == "÷") {
    // second_num = first_num / second_num;
  }
  print(second_num);
  processing();
}
    }
  }

// String readingtest(int x) {
//   List<int> integerList = [1, 2, 3, 4, 5];

//   // Join the integers in the list and parse the result as an integer
//   int combinedInteger = int.parse(integerList.join(''));

//   print('Combined integer: $combinedInteger');
//   combinedInteger += x;

//   String numberAsString = combinedInteger.toString();

//   return numberAsString; //because we want to show this into a container
// }
}

void calculation() {
  if (operand == "+") {
    second_num = first_num + second_num;
  }
  if (operand == "-") {
    second_num = first_num - second_num;
  }
  if (operand == "x") {
    second_num = first_num * second_num;
  }
  if (operand == "÷") {
    // second_num = first_num / second_num;
  }
  print(second_num);
  processing();
}

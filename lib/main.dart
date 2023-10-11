// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                color: Colors.black,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 100, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "AC",
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "+/-",
                          style: TextStyle(fontSize: 42),
                        ),
                      ),
                    ),
                    Container(
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
                    Container(
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
                        print("moye moye...!!!");
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 42, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
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
                    Container(
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
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade700,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "×",
                          style: TextStyle(fontSize: 42, color: Colors.white),
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
                    Container(
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
                    Container(
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
                    Container(
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
                    Container(
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    Container(
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
                    Container(
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
                    Container(
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    Container(
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
                    Container(
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

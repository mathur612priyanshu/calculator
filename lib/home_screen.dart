import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: RichText(
      //       text: TextSpan(
      //           style: TextStyle(
      //               fontSize: 2,
      //               color: Colors.black,
      //               fontWeight: FontWeight.bold),
      //           children: [
      //             TextSpan(
      //               text: 'Calcu',
      //             ),
      //             TextSpan(
      //                 text: "Lator", style: TextStyle(color: Colors.orange))
      //           ]),
      //     ),
      //   ),
      //   // backgroundColor: Color.fromARGB(255, 173, 229, 255),
      // ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 53, 53),
        title: RichText(
            text: TextSpan(
          children: [
            TextSpan(
                text: 'Calcu',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Lator',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold))
          ],
        )),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  border:
                      Border(top: BorderSide(width: 0.5, color: Colors.white))),
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    'C',
                                    style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.orangeAccent),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '()',
                                    style: TextStyle(
                                        fontSize: 35,
                                        color:
                                            Color.fromARGB(203, 114, 255, 89)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '%',
                                    style: TextStyle(
                                        fontSize: 35,
                                        color:
                                            Color.fromARGB(203, 114, 255, 89)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Icon(
                                    CupertinoIcons.divide,
                                    color: Color.fromARGB(203, 114, 255, 89),
                                    size: 35,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '7',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '8',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '9',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    'X',
                                    style: TextStyle(
                                        fontSize: 35,
                                        color:
                                            Color.fromARGB(203, 114, 255, 89)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '6',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 35,
                                        color:
                                            Color.fromARGB(203, 114, 255, 89)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 35,
                                        color:
                                            Color.fromARGB(203, 114, 255, 89)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '+/-',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(95, 151, 149, 149)),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(203, 114, 255, 89)),
                                  child: Text(
                                    '=',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                  onPressed: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.lightBlue,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Positioned(
              child: IconButton(
                  onPressed: () {
                    print("hello world");
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .15,
              left: 8.0,
              right: 8.0,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6 * 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 8.0)
                          ]),
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.symmetric(
                          horizontal: 1 * 8.0, vertical: 1 * 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            "Marian Hart",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              "Director of Project Management at \n GoldenPhase Solar",
                              textAlign: TextAlign.center,
                              style: TextStyle()),
                          Text("syracus University - New York"),
                          Text("Greater San Diego Area . 500"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    color: Colors.lightBlue,
                                    child: Text(
                                      "Message",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    color: Colors.lightBlue,
                                    child: Text(
                                      "Message",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                          Text(
                              "I'm a renewable energy executive with 10 years of experience, and have built strong skill in get..."),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 1,
                    right: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 1),
                                    blurRadius: 8.0)
                              ],
                              border: Border.all(color: Colors.white, width: 5),
                              shape: BoxShape.circle,
                              color: Colors.purple),
                        ),
                        Positioned(
                            bottom: 1,
                            right: 1,
                            width: 120,
                            child: Text("2nd")),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

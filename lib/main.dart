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
                    child: Opacity(
                      opacity: 0.5,
                      child: SizedBox(
                        child: Image(
                          image: AssetImage("assets/background.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .13,
              left: 8.0,
              right: 8.0,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6.5 * 8.0),
                    child: Description(),
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
                                const BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 1),
                                    blurRadius: 8.0)
                              ],
                              border: Border.all(color: Colors.white, width: 2),
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: const ClipOval(
                              child: SizedBox(
                                  child: const Image(
                                      image:
                                          const AssetImage("assets/avt.jpg"))),
                            )),
                        const Positioned(
                            bottom: 1,
                            right: 1,
                            width: 120,
                            child: Text(
                              "2nd",
                              style: TextStyle(color: Colors.grey),
                            )),
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

  Widget Description() {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        const BoxShadow(
            color: Colors.grey, offset: const Offset(0, 1), blurRadius: 8.0)
      ]),
      padding: const EdgeInsets.all(8.0),
      margin:
          const EdgeInsets.symmetric(horizontal: 1 * 8.0, vertical: 1 * 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Marian Hart",
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Director of Project Management at \n GoldenPhase Solar",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.5)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Syracus University - New York",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Greater San Diego Area . 500",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 3 * 8.0, vertical: 2 * 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.lightBlue, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Text(
                      "MESSAGE",
                      style: TextStyle(fontSize: 18, color: Colors.lightBlue),
                    )),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 3 * 8.0, vertical: 2 * 8.0),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Text(
                      "CONNECT",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "I'm a renewable energy executive with 10 years of experience, and have built strong skill in get...",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}

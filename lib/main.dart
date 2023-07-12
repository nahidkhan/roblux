import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:roblux/one.dart';

void main(List<String> args) {
  runApp(const InPoint());
}

class InPoint extends StatelessWidget {
  const InPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(cardColor: const Color.fromARGB(255, 250, 7, 3)),
      title: "The beginning",
      home: const InPage(),
    );
  }
}

class InPage extends StatefulWidget {
  const InPage({super.key});

  @override
  State<StatefulWidget> createState() => _InPageState();
}

class _InPageState extends State<InPage> {
  DateTime currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();

    _timeNow;
  }

  _timeNow() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentTime = DateTime.now();
      });
    });
    return currentTime;
  }

  void fetchPosts() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 11, 11),
          title: const Text("JOMAKHOROC"),
          actions: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.add)],
            )
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // first container
              Card(
                elevation: 15,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 118, 230, 77)
                          .withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                  ]),
                  height: 200,
                  // color: Colors.lightBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(_timeNow().toString()),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.rGKp5LVW0xDaG09Lhk5QOgHaE8?pid=ImgDet&rs=1",
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              "Rual Robin",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ), // 2nd one
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [OneItem(), TwoItem(), ThreeItem()],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //end of first container
              const Card(
                elevation: 40,
                child: Text("sata"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, int? fuk) {
                      return ListTile(
                        leading: const Icon(Icons.abc),
                        title: Text("name $fuk"),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

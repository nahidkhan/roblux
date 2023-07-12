import 'dart:async';
import 'dart:core';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:roblux/one.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(const InPoint());
}

class InPoint extends StatelessWidget {
  const InPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(cardColor: Color.fromARGB(255, 250, 7, 3)),
      title: "The beginning",
      home: InPage(),
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
    Timer.periodic(Duration(seconds: 1), (timer) {
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
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 11, 11),
          title: const Text("JOMAKHOROCH"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Icon(Icons.add)],
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
                      color: Color.fromARGB(255, 118, 230, 77)
                          .withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
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
                        child: Container(
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
                              Text(
                                "Rual Robin",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ), // 2nd one
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(40),
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
              Card(
                elevation: 40,
                child: Container(
                  child: Text("sata"),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, int? fuk) {
                      return ListTile(
                        leading: Icon(Icons.abc),
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

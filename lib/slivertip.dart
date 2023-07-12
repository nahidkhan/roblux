import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:roblux/main.dart';

class slivertip extends StatelessWidget {
  slivertip({required this.opption});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              collapsedHeight: 300,
              forceElevated: true,
              toolbarHeight: 50,
              automaticallyImplyLeading: false,
              actions: <Widget>[
                Icon(
                  Icons.person,
                  size: 40,
                )
              ],
              title: Text("$opption"),
              leading: Icon(Icons.menu),
              backgroundColor: Colors.green,
              expandedHeight: 100.0,
              floating: true,
              pinned: false),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.lightGreenAccent,
              child: Text("$opption"),
            ),
          ),
          SliverGrid.builder(
            itemCount: 55,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                color: Colors.purpleAccent,
                child: Text("$index"),
                height: 100,
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Slivertip extends StatelessWidget {
  const Slivertip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
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
              title: Text(""),
              leading: Icon(Icons.menu),
              backgroundColor: Colors.green,
              expandedHeight: 100.0,
              floating: true,
              pinned: false),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.lightGreenAccent,
              child: const Text(""),
            ),
          ),
          SliverGrid.builder(
            itemCount: 55,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                foregroundDecoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                color: Colors.purpleAccent,
                height: 100,
                child: Text("$index"),
              );
            },
          ),
        ],
      ),
    );
  }
}

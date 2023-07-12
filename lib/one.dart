import 'package:flutter/material.dart';

class OneItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black38, width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Balance"),
            Text("500"),
            Spacer(),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}

class TwoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black38, width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Liability"),
            Text("500"),
            Spacer(),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}

class ThreeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Assetts"),
          Text("500"),
          Spacer(),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}

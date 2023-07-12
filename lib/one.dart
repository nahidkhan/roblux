import 'package:flutter/material.dart';

class OneItem extends StatelessWidget {
  const OneItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black38, width: 1))),
        child: const Row(
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
  const TwoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black38, width: 1))),
        child: const Row(
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
  const ThreeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
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

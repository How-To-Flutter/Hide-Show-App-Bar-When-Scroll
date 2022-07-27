import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String child;
  Square({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Container(
        child: Center(
            child: Text(
          child,
          style: TextStyle(fontSize: 20),
        )),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 1),
              color: Color.fromARGB(47, 0, 0, 0))
        ], color: Color.fromARGB(255, 234, 233, 233)),
        height: 75,
      ),
    );
  }
}

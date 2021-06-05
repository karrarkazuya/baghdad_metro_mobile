import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.title, required this.selected})
      : super(key: key);
  final String title;
  final bool selected;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: selected ? Colors.blueAccent : Colors.white,
        border: Border.all(color: Colors.blueAccent),
        borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
      ),
      child: Text(title, style: const TextStyle(
        fontFamily: "Poppins",
      )),
    );
  }
}

import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({Key? key, required this.title}) : super(key: key);
  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          decoration: InputDecoration(
            labelText: title,
            fillColor: Colors.white,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
              borderSide: BorderSide(
              ),
            ),
            //fillColor: Colors.green
          ),
          validator: (val) {
            if(val!.isEmpty) {
              return title + " cannot be empty";
            }else{
              return null;
            }
          },
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(
            fontFamily: "Poppins",
          ),
        );
  }
}

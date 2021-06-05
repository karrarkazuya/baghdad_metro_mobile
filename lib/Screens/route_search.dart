import 'package:baghdad_metro/Languages/language_picker.dart';
import 'package:baghdad_metro/Widgets/button.dart';
import 'package:baghdad_metro/Widgets/input_text.dart';
import 'package:flutter/material.dart';

class RouteSearch extends StatefulWidget {
  const RouteSearch({Key? key}) : super(key: key);

  @override
  MyWidget createState() => MyWidget();
}


class MyWidget extends State<RouteSearch> {
  int toType = 0; // 0  Street, 1 town, 2 station

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
      child: ListView(
        children: [
          const SizedBox(height: 10),
          InputText(title: LanguagePicker.getCurrent().get_my_location),
          const SizedBox(height: 25),
          Text(LanguagePicker.getCurrent().to_location_type, style: const TextStyle(
            fontFamily: "Poppins",
            color: Colors.grey
          )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    toType = 0;
                  });
                },
                child: Button(
                    title: LanguagePicker.getCurrent().street,
                    selected: toType == 0),
              ),

              
              InkWell(
                onTap: () {
                  setState(() {
                    toType = 1;
                  });
                },
                child: Button(
                    title: LanguagePicker.getCurrent().town,
                    selected: toType == 1),
              ),

              
              InkWell(
                onTap: () {
                  setState(() {
                    toType = 2;
                  });
                },
                child: Button(
                    title: LanguagePicker.getCurrent().station,
                    selected: toType == 2),
              ),
            ],
          ),
          const SizedBox(height: 25),
          InputText(title: LanguagePicker.getCurrent().to_location)
        ],
      ),
    );
  }
}

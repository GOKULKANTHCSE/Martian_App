import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDown({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(35, 35, 35, 0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {
          print(values);
        },
        items: values.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: Color.fromARGB(255, 0, 0, 0),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   Widget childWidget;
   void Function() onPressed;

  MyButton({Key? key, required this.childWidget, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      // color: Colors.red,
      elevation: 5.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          elevation: 5.0,
          primary: Colors.white,
          onPrimary: Colors.red,
          minimumSize: const Size(40.0, 60.0),
          //textStyle: TextStyle(color: Colors.blue),
        ),
        onPressed: onPressed,
        child: childWidget,
      ),
    );
  }
}

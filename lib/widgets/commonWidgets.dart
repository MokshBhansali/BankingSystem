import 'package:devsdemo/global/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

SizedBox mySizedBox(
    {@required double myHeight, @required double myWidth, child}) {
  return SizedBox(
    height: double.parse("$myHeight"),
    width: double.parse("$myWidth"),
    child: child,
  );
}

showSnackbar(ScaffoldState key, String text, Color color) {
  key.showSnackBar(SnackBar(
      content: Text(text, style: TextStyle(color: ColorPlate.WhiteColor)),
      backgroundColor: color ?? ColorPlate.RedColor,
      duration: Duration(seconds: 2)));
}

showToastMessage({@required String text, @required Color color}) {
  return Fluttertoast.showToast(
      msg: text ?? "",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? ColorPlate.BlackColor,
      textColor: ColorPlate.WhiteColor,
      fontSize: 16.0);
}

Container myTextField({String hint}) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(26)),
    height: 40,
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint ?? "",
        filled: true,
        fillColor: Color(0xFFf6f9fb),
        suffixIcon: Icon(
          Icons.search,
          color: ColorPlate.BlackColor,
        ),
      ),
    ),
  );
}

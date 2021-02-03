import 'package:flutter/material.dart';

import 'screens/homeScreen.dart';
import 'screens/splashScreen.dart';

var routes = <String, WidgetBuilder>{
  "/": (context) => SplashScreen(),
  "/Home": (context) => HomeScreen(),
};

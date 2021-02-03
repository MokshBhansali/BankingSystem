import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'blocs/contactBloc.dart';
import 'routes.dart';
import 'global/app.dart';
import 'global/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ContactBloc()),
      ],
      child: MaterialApp(
        title: AppString.AppName,
        theme: ThemeData(
          primarySwatch: ColorPlate.BlueColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: routes,
        initialRoute: "/",
      ),
    );
  }
}

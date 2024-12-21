import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:spar_pos/routes.dart';

import 'helpers/routes_enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Spar POS App',
      theme: ThemeData(
        fontFamily: 'Crimson Text'
      ),
      initialRoute: Routes.getValueForRoute(RoutesEnum.signIn),
      getPages: getPages,
      debugShowCheckedModeBanner: false,
    );
  }
}



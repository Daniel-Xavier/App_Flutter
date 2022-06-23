import 'package:flutter/material.dart';
import 'package:app_facs/telas/details_page.dart';
import 'package:app_facs/telas/model_page.dart';
import 'package:app_facs/telas/my_home_page.dart';
import 'package:app_facs/telas/main_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'HomePage',
      routes: {
        'HomePage': (context) => MyHomePage(),
        'MainPagePage': (context) => MainPage(),
        'DetailsPage': (context) => DetailsPage(),
        'ModelPage': (context) => ModelPage(),
      },
    ),
  );
}

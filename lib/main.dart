import 'package:flutter/material.dart';
import 'package:ticketapp/image_input.dart';
import 'first_screen.dart';
import 'home_page.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ImageInput.tag: (context) => ImageInput(),
    NavigationHomeScreen.tag: (context) => NavigationHomeScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ticket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rappi_clone/Search/search_view.dart';

import 'Home/home.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme:
              GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //home: Home(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const Home());
      },
    );
  }
}

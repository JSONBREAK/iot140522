// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors

import 'package:dropboxiot_flutter/models/FirebaseData.dart';
import 'package:dropboxiot_flutter/screens/main/main_screen.dart';
import 'package:dropboxiot_flutter/widget/show_list_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'controllers/MenuController.dart';
import 'login_screen.dart';
import 'widget/test.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestProduct(),
      //home: ProviderMain(),
    );
  }
}

class ProviderMain extends StatelessWidget {
  const ProviderMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dropbox Iot',
        home: MainScreen(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
      ),
    );
  }
}

class ProviderLogin extends StatelessWidget {
  const ProviderLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dropbox Iot',
        home: LoginPage(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
      ),
    );
  }
}

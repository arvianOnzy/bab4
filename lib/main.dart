import 'package:bab4/provider/done_tourism_providerd.dart';
import 'package:flutter/material.dart';
//import 'package:bab3_flutter_layout/detail_screen.dart';
import 'package:bab4/main_screen.dart';
import 'package:provider/provider.dart';
//import 'package:bab3_flutter_layout/model/tourism_place.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        home: MainScreen(),
      ),

    );
  }
}


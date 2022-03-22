//import 'package:flutter/cupertino.dart';
import 'package:bab4/done_tourism_list.dart';
import 'package:bab4/tourism_list.dart';
import 'package:flutter/material.dart';
//import 'package:bab3_flutter_layout/detail_screen.dart';
//import 'package:bab3_flutter_layout/model/tourism_place.dart';


class MainScreen extends StatefulWidget {//1
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
} //1

  class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context){ //2
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Kota Surabaya'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.done_outline),
          onPressed: (){
            Navigator.push(
             context,
             MaterialPageRoute(builder: (context) {
               return const DoneTourismList();
             }),);
          },
        )
      ],
      ),
      body: TourismList(),
    );
  } //2
}//1
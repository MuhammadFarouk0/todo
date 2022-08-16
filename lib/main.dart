
import 'package:flutter/material.dart';
import 'package:todo2/thems.dart';

import 'home/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThem.lightThem,
      routes: {HomeScrren.routeName:(_)=>HomeScrren()},
      initialRoute: HomeScrren.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}

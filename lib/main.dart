
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo2/firebase_options.dart';
import 'package:todo2/thems.dart';

import 'home/home_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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

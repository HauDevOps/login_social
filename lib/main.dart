import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_social/page/home/home_bloc.dart';
import 'package:login_social/page/home/home_page.dart';
import 'package:login_social/router/customer_router.dart';
import 'package:login_social/router/router_name.dart';
import 'base/basic_bloc.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: CustomerRouter.allRoutes,
      initialRoute: router_main,
    );
  }
}






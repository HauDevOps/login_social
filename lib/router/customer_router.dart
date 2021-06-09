import 'package:flutter/material.dart';
import 'package:login_social/base/basic_bloc.dart';
import 'package:login_social/page/home/home_bloc.dart';
import 'package:login_social/page/home/home_page.dart';
import 'package:login_social/router/router_name.dart';

class CustomerRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case router_main:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              child: HomePage(),
              bloc: HomeBloc(),
            ));
        return MaterialPageRoute(builder: (_) => null);
    }
  }
}
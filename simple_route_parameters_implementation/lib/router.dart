import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:simple_route_parameters_implementation/routes/home_route.dart';
import 'package:simple_route_parameters_implementation/routes/one_route.dart';
import 'package:simple_route_parameters_implementation/routes/three_route.dart';
import 'package:simple_route_parameters_implementation/routes/two_route.dart';

class MyRouter extends NuRouter {
  @override
  String get initialRoute => 'home';

  @override
  List<NuRoute> get registerRoutes => [
    HomeRoute(),
    OneRoute(),
    TwoRoute(),
    ThreeRoute()
  ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: MyRouter(),
  );
}
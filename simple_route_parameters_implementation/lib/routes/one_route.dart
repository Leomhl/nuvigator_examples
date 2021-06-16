import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:simple_route_parameters_implementation/screens/one_screen.dart';

class OneRequestArgs {
  String name;
}

// @NuRouteParser()
class OneRoute extends NuRoute<NuRouter, OneRequestArgs, void> {
  @override
  String get path => 'one';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<OneRequestArgs> settings) {
    // print(settings);
    return OneScreen(
      params: settings.args?.name,
      onScreenTwoClick: () => nuvigator.open('two'),
      onScreenThreeClick: () => nuvigator.open('three'),
      onClose: () => nuvigator.pop(),
    );
  }
}
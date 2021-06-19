import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:simple_route_parameters_implementation/screens/one_screen.dart';

class OneRequestArgs {
  OneRequestArgs({this.name});
  final String name;

  static OneRequestArgs fromJson(Map<String, dynamic> json) {
    return OneRequestArgs(
      name: json['name'],
    );
  }

  @override
  String toString() {
    return 'OneRequestArgs(name: $name)';
  }
}

// Arguments of this Route specifies the following:
// 1. be installed on any NuRouter
// 2. to receive arguments that can be parsed into a OneRequestArgs class
// 3. when popped will return a String
class OneRoute extends NuRoute<NuRouter, OneRequestArgs, String> {
  @override
  String get path => 'one';

  @override
  ScreenType get screenType => materialScreenType;

  /// Flutter does not have support for reflection, we need to explicitly provide a function to parse
  /// the [NuRouteSettings.rawParameters] into the specified class that will be made available in [NuRouteSettings.args]
  @override
  ParamsParser<OneRequestArgs> get paramsParser => OneRequestArgs.fromJson;

  @override
  Widget build(BuildContext context, NuRouteSettings<OneRequestArgs> settings) {
    /// Map<String, dynamic> with the raw arguments passed to the route
    print(settings.rawParameters);

    /// OneRequestArgs instance with the parsed arguments
    print(settings.arguments);
    return OneScreen(
      params: settings.args?.name,
      onScreenTwoClick: () => nuvigator.open('two'),
      onScreenThreeClick: () => nuvigator.open('three'),
      // The same work for nested flows when calling `closeFlow` to return a flow result
      onClose: () => nuvigator.pop('closed'),
    );
  }
}

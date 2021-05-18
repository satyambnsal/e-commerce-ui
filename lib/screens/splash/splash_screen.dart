import 'package:flutter/material.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

import 'package:flavor/flavor.dart';
import 'package:flavor/web/components/Page/dashboard.dart';
import 'package:flutter/material.dart';
import 'apps/saucetv/pages/onboard.dart';

void main(List<String> args) {
  runApp(FlavorApp(device: true, routes: {
    '/dashbord': (context) => PageDashboard(),
    'onboarding': (context) => OnBoarding(),
    '/users': (context) => Container(),
    '/media': (context) => Container(),
    '/plugins': (context) => Container(),
    '/settings': (context) => Container(),
  }));
}

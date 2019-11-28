import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/pages/details.dart';
import 'package:dlxapp/apps/saucetv/pages/home.dart';
import 'package:dlxapp/apps/saucetv/pages/onboard.dart';
import 'package:dlxapp/apps/saucetv/pages/profile.dart';
import 'package:dlxapp/apps/saucetv/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SauceTVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppSettingsModel>(
        builder: (_) => AppSettingsModel(context),
        child: Consumer<AppSettingsModel>(
          builder: (context, login, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  brightness: Brightness.dark, 
                  primarySwatch: Colors.red, primaryColor: Colors.red),
              home: SauceSplash(),
              routes: {
                'onboarding': (context) => OnBoarding(),
                'home': (context) => SauceHome(),
                'profile': (context) => PageProfile(),
                'details': (context) => SauceDetailsPage(),
              },
            );
          },
        ));
  }
}


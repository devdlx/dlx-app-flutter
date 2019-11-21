import 'dart:async';

import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/assets.dart';
import 'package:dlxapp/apps/saucetv/pages/home.dart';
import 'package:dlxapp/apps/saucetv/pages/onboard.dart';
import 'package:dlxapp/apps/saucetv/saucetv.dart';
import 'package:dlxapp/components/Page/Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter/services.dart';

class SauceSplash extends StatefulWidget {
  @override
  _SauceSplashState createState() => _SauceSplashState();
}

class _SauceSplashState extends State<SauceSplash> {
  AppSettingsModel appset;

  @override
  Widget build(BuildContext context) {
    appset = Provider.of<AppSettingsModel>(context);
    appset.addListener(() {
      // print(appset.token);

      if (!appset.isLoading && appset.token == null) {
        // print('Not logged in...');
        // return OnBoarding();

        Timer(Duration(seconds: 0), () {
          Navigator.of(context).pushReplacementNamed('onboarding');
        });
      }

      if (!appset.isLoading && appset.token != null) {
        //
        // return SauceHome();

        Timer(Duration(seconds: 0), () {
          Navigator.of(context)
              // .pushNamedAndRemoveUntil('home', (Route<dynamic> route) => false);
              .pushReplacementNamed('home');
        });
      }
    });

    return PageShell(
      color: Colors.red,
      statusbarColor: Colors.transparent,
      safeArea: false,
      child: Center(
        child: Hero(
          tag: 'saucetvlogo',
          child: Container(
            height: 60,
            child: ImageAssets.sauceTvLogo,
          ),
        ),
      ),
    );
  }
}

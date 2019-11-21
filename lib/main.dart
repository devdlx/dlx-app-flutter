// import 'package:dlxapp/apps/dlxstudios/dlxstudios.dart';
import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/saucetv.dart';
import 'package:dlxapp/components/Page/splashpage.dart';
import 'package:flutter/material.dart';
// import 'package:dlxapp/apps/saucetv/saucetv.dart';
import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import 'components/Build/BuildAppNEW.dart';

// void main() => runApp(ChangeNotifierProvider<AppSettingsModel>(
//     builder: (context) => AppSettingsModel(context),
//     child: Consumer<AppSettingsModel>(
//       builder: (_, settings, __) => BuildApp(settings),
//     )));

// void main() => runApp(ChangeNotifierProvider<AppSettingsModel>(
//     builder: (context) => AppSettingsModel(context),
//     child: Consumer<AppSettingsModel>(
//       builder: (_, settings, __) => SauceTVApp(),
//     )));

// slim - $|_#dG#1HQjoB,5

void main() => runApp(ChangeNotifierProvider<AppSettingsModel>(
    builder: (context) => AppSettingsModel(context),
    child: Consumer<AppSettingsModel>(
      builder: (_, settings, __) => AppShell(settings),
    )));

class AppShell extends StatefulWidget {
  final AppSettingsModel settings;
  AppShell(this.settings);

  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  @override
  Widget build(BuildContext context) {
    if (!widget.settings.isLoading) {
      return BuildApp(widget.settings);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        themeMode: ThemeMode.dark,
        theme: ThemeData(primaryColor: Colors.amber, fontFamily: 'Poppins'),
        home: PageSplash());
  }
}

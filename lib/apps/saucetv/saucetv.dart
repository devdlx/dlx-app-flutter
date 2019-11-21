import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/MediaController.dart';
import 'package:dlxapp/apps/saucetv/assets.dart';
import 'package:dlxapp/apps/saucetv/pages/details.dart';
import 'package:dlxapp/apps/saucetv/pages/home.dart';
import 'package:dlxapp/apps/saucetv/pages/onboard.dart';
import 'package:dlxapp/apps/saucetv/pages/profile.dart';
import 'package:dlxapp/apps/saucetv/pages/splash.dart';
import 'package:dlxapp/components/Page/Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SauceTVApp extends StatefulWidget {
  @override
  _SauceTVAppState createState() => _SauceTVAppState();
}

class _SauceTVAppState extends State<SauceTVApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MediaController>(
            builder: (_context) => MediaController()),
      ],
      child: AppShell(),
    );

    // return ChangeNotifierProvider<AppSettingsModel>(
    //     builder: (_) => AppSettingsModel(context),
    //     child: Consumer<AppSettingsModel>(
    //       builder: (context, login, child) {
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           theme: ThemeData(
    //               // brightness: Brightness.dark,
    //               primarySwatch: Colors.red,
    //               primaryColor: Colors.red),
    //           home: SauceSplash(),
    //           routes: {
    //             'onboarding': (context) => OnBoarding(),
    //             'home': (context) => SauceHome(),
    //             'profile': (context) => PageProfile(),
    //             'details': (context) => SauceDetailsPage(),
    //           },
    //         );
    //       },
    //     ));
  }
}

class AppShell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppSettingsModel>(
      builder: (context, sett, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
            brightness: sett.darkTheme ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.red,
            primaryColor: Colors.red,
          ),
          home: SauceSplash(),
          routes: {
            'onboarding': (context) => OnBoarding(),
            // 'home': (context) => SauceHome(),
            'home': (context) => AnimatedHome(),
            'profile': (context) => PageProfile(),
            'details': (context) => SauceDetailsPage(),
          },
        );
      },
    );
  }
}

class SauceTVShell extends StatefulWidget {
  @override
  _SauceTVShellState createState() => _SauceTVShellState();
}

class _SauceTVShellState extends State<SauceTVShell> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppSettingsModel>(
        builder: (_) => AppSettingsModel(context),
        child: Consumer<AppSettingsModel>(
          builder: (context, appSettings, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  brightness: Brightness.dark,
                  primarySwatch: Colors.red,
                  primaryColor: Colors.red),
              // onGenerateRoute: appSettings.generateRoute,
              initialRoute: '/',
            );
          },
        ));
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageShell(
      color: Colors.red,
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('routeName');
            },
            child: Text('data'),
          ),
          Center(
            child: Hero(
              tag: 'saucetvlogo',
              child: Container(
                height: 60,
                // color: Colors.blueGrey,
                child: ImageAssets.sauceTvLogo,
                // child: Text('${MediaQuery.of(context).size.width}'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dlxapp/components/Build/apiApp.dart';
import 'package:dlxapp/components/Build/buildApp.dart';
import 'package:dlxapp/components/Page/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dlxapp/apps/dlxstudios/dlxstudios.dart';

void main() => runApp(DlxApp());

// void main() => runApp(DLXApp());

class DLXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppModelJsonFB>(
        builder: (_) => AppModelJsonFB(),
        child: Consumer<AppModelJsonFB>(builder: (context, app, child) {
          app.isLoading
              ? print('app is loading docs')
              : print('app has finished loading docs');

          return app.isLoading
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  themeMode: ThemeMode.dark,
                  home: PageSplash(),
                )
              : BuildApp(app);

          // return Home();
        }));
  }
}

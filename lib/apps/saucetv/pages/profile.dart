import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/saucetv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PageProfile extends StatefulWidget {
  @override
  _PageProfileState createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true)..init(context);

    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      body: SingleChildScrollView(
        child: Container(
          width: ScreenUtil.screenWidth,
          height: ScreenUtil.screenHeight,
          child: ListView(
            children: <Widget>[
// profile header
              Container(
                height: 300,
                color: Colors.cyanAccent,
              ),

              // profile actions

              ListTile(
                title: Text('Signout'),
                onTap: () {
                  Provider.of<AppSettingsModel>(context).signout().then((done) {
                    // push loginscreen
                    // Navigator.popAndPushNamed(context, 'onboarding');
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        'onboarding', (Route<dynamic> route) => false);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

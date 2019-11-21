import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/saucetv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class PageProfile extends StatefulWidget {
  @override
  _PageProfileState createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  var _darkTheme = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true)..init(context);
    _darkTheme = Provider.of<AppSettingsModel>(context).darkTheme;
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // margin: EdgeInsets.all(8),
              height: ScreenUtil.mediaQueryData.size.height,
              width: ScreenUtil.screenWidth,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 50,
                    child: Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 112,
                    child: Container(
                      // width: 200,
                      // height: 500,
                      // color: Colors.yellowAccent,

                      child: Material(
                        type: MaterialType.canvas,
                        color: Colors.red,
                        elevation: 5,
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(46),
                            topRight: Radius.circular(46)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              // profile header
                              SizedBox(
                                height: 30,
                                // color: Colors.cyanAccent,
                              ),

                              // profile actions

                              //
                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Dark Theme'),
                                trailing: Consumer<AppSettingsModel>(
                                  builder: (context, sett, _) {
                                    return Checkbox(
                                      value: _darkTheme,
                                      onChanged: (bool newValue) {
                                        var log = Logger();

                                        // Provider.of<AppSettingsModel>(context)
                                        //     .setDarkTheme(_darkTheme);
                                        setState(() {
                                          _darkTheme = !_darkTheme;
                                          sett.setDarkTheme(_darkTheme);

                                          log.e(newValue);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),

                              ListTile(
                                title: Text('Signout'),
                                onTap: () {
                                  Provider.of<AppSettingsModel>(context)
                                      .signout()
                                      .then((done) {
                                    // push loginscreen
                                    // Navigator.popAndPushNamed(context, 'onboarding');
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil('onboarding',
                                            (Route<dynamic> route) => false);
                                  });
                                },
                              ),

                              SizedBox(
                                height: 30,
                              ),

                              SizedBox(
                                height: 200,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

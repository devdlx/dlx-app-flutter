import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/assets.dart';
import 'package:dlxapp/apps/saucetv/saucetv.dart';
import 'package:dlxapp/components/shellPage/shellPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../customdrip.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool notBusy = true;
  final _onBoardFormLoginKey = GlobalKey<FormState>();
  final _onBoardFormSignUpKey = GlobalKey<FormState>();

  PageController _formPageViewController =
      PageController(initialPage: 0, keepPage: true);

  var loginError;
  var signinError;

  void formPage(int i) {
    _formPageViewController.animateToPage(i,
        duration: Duration(milliseconds: 600), curve: Curves.ease);
    print(_formPageViewController.page.toDouble().toString());
  }

  @override
  void initState() {
    // cTODO: implement initState
    super.initState();
  }

  final _usernameTextController = TextEditingController(text: 'ben@guy.com');
  final _passwordTextController = TextEditingController(text: 'golucky6');
  final _repasswordTextController = TextEditingController(text: 'golucky66');

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _usernameTextController.dispose();
    _passwordTextController.dispose();
    _repasswordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageShell(
          // color: Colors.grey.shade900,
          // color: Colors.red,
          // safeArea: true,
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 46,
              ),
              // Header/Logo

              Hero(
                tag: 'saucetvlogo',
                child: Container(
                  height: 60,
                  // color: Colors.blueGrey,
                  child: ImageAssets.sauceTvLogo,
                ),
              ),

              Material(
                // color: Colors.purpleAccent,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                // elevation: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CustomPaint(
                      child: Container(
                        height: 100.0,
                      ),
                      painter: CurvePainter(),
                    ),
                    Container(
                      height: 420,
                      child: PageView(
                        controller: _formPageViewController,
                        scrollDirection: Axis.horizontal,
                        pageSnapping: true,
                        children: <Widget>[
                          buildFormLogin(),
                          buildFormSignUp(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget buildFormSignUp() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _onBoardFormSignUpKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            signinError != null
                ? Center(
                    child: Text(
                      '$signinError',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                : Container(
                    height: 20,
                  ),

            // SizedBox(
            //   height: 10,
            // ),

            /// Fields
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // Username BOX

                  Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // elevation: 5,
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        enabled: notBusy,
                        controller: _usernameTextController,
                        validator: (txt) {
                          print(txt);
                          return null;
                        },
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          // border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  // Password BOX
                  Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // elevation: 5,
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        enabled: notBusy,
                        controller: _passwordTextController,
                        obscureText: true,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          // border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // Password TWOOO
                  SizedBox(
                    height: 16,
                  ),
                  Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // elevation: 5,
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        enabled: notBusy,
                        autovalidate: true,
                        controller: _repasswordTextController,
                        obscureText: true,
                        style: TextStyle(),
                        validator: (txt) {
                          // print(txt == _passwordTextController.text);
                          return txt == _passwordTextController.text
                              ? null
                              : 'Password field do not match!';
                        },
                        decoration: InputDecoration(
                          labelText: 'Re-enter Password',
                          // border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Login Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: !notBusy
                      ? null
                      : () {
                          formPage(0);
                        },
                  child: Row(
                    children: <Widget>[
                      Text('Already a user?  '),
                      Text(
                        'Login',
                        style: TextStyle(color: Colors.amber),
                      )
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.red,
                  colorBrightness: Brightness.dark,
                  onPressed: !notBusy
                      ? null
                      : () {
                          if (_onBoardFormSignUpKey.currentState.validate()) {
                            _formSignup();
                          }
                        },
                  child: Text('Signup'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFormLogin() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _onBoardFormLoginKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            loginError != null
                ? Center(
                    child: Text(
                      '$loginError',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                : Container(
                    height: 20,
                  ),

            // SizedBox(
            //   height: 10,
            // ),

            /// Fields
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // Username BOX

                  Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // elevation: 5,
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        enabled: notBusy,
                        controller: _usernameTextController,
                        validator: (txt) {
                          print(txt);
                          return null;
                        },
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          // border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  // Password BOX
                  Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // elevation: 5,
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        enabled: notBusy,
                        controller: _passwordTextController,
                        obscureText: true,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          // border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              // color: Colors.purple,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Forgot Password

                  FlatButton(
                    // color: Colors.red,
                    textColor: Colors.red,
                    onPressed: !notBusy ? null : () {},
                    child: Text('forgot password'),
                  ),

                  // Login Button
                  RaisedButton(
                    color: Colors.red,
                    colorBrightness: Brightness.dark,
                    onPressed: !notBusy
                        ? null
                        : () {
                            if (_onBoardFormLoginKey.currentState.validate()) {
                              _formLogin();
                            }
                          },
                    child: Text('LOGIN'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // SignUp Button
            FlatButton(
              onPressed: !notBusy
                  ? null
                  : () {
                      formPage(1);
                    },
              child: Row(
                children: <Widget>[
                  Text('New user? '),
                  Text(
                    'Signup',
                    style: TextStyle(color: Colors.amber),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _formSignup() async {
    setState(() {
      notBusy = false;
      loginError = null;
    });
    var error = await Provider.of<AppSettingsModel>(context)
        .login(_usernameTextController.text, _passwordTextController.text);

    // print(error);

    if (error.containsKey('error')) {
      setState(() {
        loginError = error['error']['message'];
      });
    } else {}

    setState(() {
      notBusy = true;
    });
  }

  void _formLogin() async {
    setState(() {
      notBusy = false;
      loginError = null;
    });
    var error = await Provider.of<AppSettingsModel>(context)
        .login(_usernameTextController.text, _passwordTextController.text);

    // print(error);

    if (error.containsKey('error')) {
      setState(() {
        loginError = error['error']['message'];
        notBusy = true;
      });
    } else {
      setState(() {
        notBusy = true;
      });

      Navigator.popAndPushNamed(context, 'home');
    }
  }
}

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:dlxapp/utils/utils.dart' as api;

class AppSettingsModel with ChangeNotifier {
  String apiBase = "https://us-central1-dlxstudios-f6e64.cloudfunctions.net/";
  String apiLogin = "signInWithEmail";
  String apiSignUp = "signUpWithEmail";
  //
  bool isLoading = true;
  // User
  String email;
  String localId;
  String token;
  bool isLoggedIn;

  Box _box;

  BuildContext context;

  Object nav;

  void pushTo(String page, BuildContext context, {api.DataItem data}) {
    Navigator.of(context).pushNamed(page, arguments: data);
  }

  AppSettingsModel(BuildContext context) {
    this.context = context;
    hiveInit();
  }

  Future<Map<String, dynamic>> login(String email, String password) async {
    print('Login.Model.login - $email - $password');

    return await api
        .post('$apiBase$apiLogin', {"email": email, "password": password}).then(
            (userJson) {
      // Got json back
      // print(userJson);
      // see if there are any errors
      if (userJson.containsKey('error')) {
        return userJson['error'];
      }
      // save user info
      saveUserFromJson(userJson);
      // reutrn something
      return {"code": 200};
    });
  }

  void signup(String email, String password, String repassword) async {
    print('Login.Model.signup - $email - $password - $repassword');
    await api.post('$apiBase$apiSignUp', {
      "email": email,
      "password": password,
      "repassword": repassword
    }).then((userJson) {
      // Got json back
      // print(userJson);
      // see if there are any errors
      if (userJson.containsKey('error')) {
        return userJson['error'];
      }
      // save user info
      saveUserFromJson(userJson);
      // reutrn something
      return {"code": 200};
    });
  }

  Future hiveInit() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    // print(dir.path);
    return Hive.openBox('saucetv').then((snap) {
      // set the box for future use
      _box = snap;
      // check the length ( degug )
      // print('snap.length - ${snap.length}');
      // Load all loginSettings
      loadUserFromHive();
      // finished setting sata

      Timer(Duration(seconds: 0), () {
        isLoading = false;
        notifyListeners();
      });
    });
  }

  void saveUserFromJson(Map<String, dynamic> userJson) {
    // print(userJson['idToken']);
    // print(userJson['email']);
    // print(userJson['localId']);
    this.token = userJson['idToken'];
    _box.put('token', this.token);
    this.email = userJson['email'];
    _box.put('email', this.email);
    this.localId = userJson['localId'];
    _box.put('localId', this.localId);
    notifyListeners();
  }

  void loadUserFromHive() {
    this.token = token = _box.get('token');
    this.email = _box.get('email');
    this.localId = _box.get('localId');
    // print('Not logged in...');
    this.token == null ? this.isLoggedIn = true : this.isLoggedIn = false;

    notifyListeners();
  }

  Future<bool> signout() async {
    _box.deleteAll([
      'token',
      'email',
      'localId',
    ]);
    this.token = null;
    this.email = null;
    this.localId = null;

    // print(this.token);
    // print(_box.get('token'));

    Timer(Duration(seconds: 0), () {
      isLoading = false;
      notifyListeners();
    });

    return true;
  }
}

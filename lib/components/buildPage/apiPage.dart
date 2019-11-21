import 'dart:async';
import 'dart:convert';
import 'package:dlxapp/components/buildPage/blocPage.dart';
import 'package:http/http.dart' as http;

import 'package:dlxapp/utils/utils.dart';
import 'package:dlxapp/components/shellPage/shellPage.dart';

Future<PageBloc> fetchPage(String path) async {
  String resBody = await http
      .get(Uri.parse('$apiBaseUrl$path'))
      .then((http.Response res) => res.body);
  Map<String, dynamic> app;
  try {
    app = json.decode(resBody);
  } catch (e) {
    print('fetchPage : $e');
  }
  return PageBloc.fromJson(app);
}


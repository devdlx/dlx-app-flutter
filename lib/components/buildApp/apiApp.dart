import '../../utils/utils.dart';
import 'package:flutter/foundation.dart';

class AppModelJsonFB with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  ///
  ///
  String _id;
  String get id => _id;
  String _title;
  String get title => _title;
  String _errorMessage;
  String get errorMessage => _errorMessage;
  List _pages = [];
  List get pages => _pages;

  Map<String, dynamic> _pagesMap = {};
  Map<String, dynamic> get pagesMap => _pagesMap;

String _firestoreLocation = "";


  AppModelJsonFB({String firestoreLocation}) {
    if (firestoreLocation.length != null)
    // un-hardcode the app location
    fetchFirestore(
            '${firestoreLocation}')
        .then((snap) {
      ///////////////////////////////////////
      ///// -----   Get All Fields first

      Map<String, dynamic> fields;

      snap.containsKey('fields')
          ? fields = snap['fields']
          : _errorMessage = snap['error'];
      // print(fields);

      ///////////////////////////////////////
      ///// -----   Pages
      Map<String, dynamic> pages;
      fields.containsKey('pages')
          ? pages = fields['pages']
          : _errorMessage = "no 'pages' field";
      // print(pages);

      List<dynamic> _pagesListData;
      _pagesListData = pages['arrayValue']['values'];

      _pagesListData.forEach((_pageData) {
        // print(_pageData);
        Map<String, dynamic> page = _pageData['mapValue']['fields'];
        _pages.add(page);
      });

      //////////////////////////////////
      /// ------ pages Map
      ///
      _pagesListData.forEach((_pageData) {
        Map<String, dynamic> page = _pageData['mapValue']['fields'];
        String route = page['route']['stringValue'];
        String pageData = page['pageData']['referenceValue'];
        _pagesMap.putIfAbsent(route, () => pageData);
      });

      ///////////////////////////////////////
      ///// -----   End all fetching, applied all info

      this._isLoading = false;
      notifyListeners();
    }).catchError((e) {
      _errorMessage = e;
    });

    ///////////////////////////////////////
    ///// -----   End

    print('END fetch app');
  }

  AppModelJsonFB.fromJson(Map<String, dynamic> parsedJson)
      : _title = parsedJson['title'];
}

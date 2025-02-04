
// import 'package:flutter/foundation.dart';


class AppModelFirebaseJson {
  String _id;
  String get id => _id;
  String _title;
  String _errorMessage;
  String get errorMessage => _errorMessage;
  List _pages;
  List get pages => _pages;

  //  String get id {return _id;}

  // AppModel({this.id, this.title, this.errorMessage});

  // AppModel.fromJson(Map<String, dynamic> json) {

  // }

  AppModelFirebaseJson.withError(String msg) {
    _errorMessage = msg;
  }

  AppModelFirebaseJson(json) {
    _id = json['name'];
    _title = json['title'];
    for (int i = 0; i < json['pages'].length; i++) {
      _pages.add(json['pages'][i]);
    }
  }

   get title => _title;

}




// class AppModelx {
//   int _vote_count;
//   int _id;
//   bool _video;
//   var _vote_average;
//   String _title;
//   double _popularity;
//   String _poster_path;
//   String _original_language;
//   String _original_title;
//   List<int> _genre_ids = [];
//   String _backdrop_path;
//   bool _adult;
//   String _overview;
//   String _release_date;

//   _Result(result) {
//     _vote_count = result['vote_count'];
//     _id = result['id'];
//     _video = result['video'];
//     _vote_average = result['vote_average'];
//     _title = result['title'];
//     _popularity = result['popularity'];
//     _poster_path = result['poster_path'];
//     _original_language = result['original_language'];
//     _original_title = result['original_title'];
//     for (int i = 0; i < result['genre_ids'].length; i++) {
//       _genre_ids.add(result['genre_ids'][i]);
//     }
//     _backdrop_path = result['backdrop_path'];
//     _adult = result['adult'];
//     _overview = result['overview'];
//     _release_date = result['release_date'];
//   }

//   String get release_date => _release_date;

//   String get overview => _overview;

//   bool get adult => _adult;

//   String get backdrop_path => _backdrop_path;

//   List<int> get genre_ids => _genre_ids;

//   String get original_title => _original_title;

//   String get original_language => _original_language;

//   String get poster_path => _poster_path;

//   double get popularity => _popularity;

//   String get title => _title;

//   double get vote_average => _vote_average;

//   bool get video => _video;

//   int get id => _id;

//   int get vote_count => _vote_count;
// }

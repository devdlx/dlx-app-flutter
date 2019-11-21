import 'package:dlxapp/components/buildComponent/buildComponentFB.dart';
import 'package:dlxapp/components/buildPage/apiPage.dart';
import 'package:dlxapp/components/buildPage/blocPage.dart';
import 'package:flutter/material.dart';
import 'package:dlxapp/components/shellPage/shellPage.dart';
import 'dart:convert';

class BuildPage extends StatelessWidget {
  final List<Widget> components;

  BuildPage(this.components);

  @override
  Widget build(BuildContext context) {
    return PageShell(
      // safeArea: false,
        child: CustomScrollView(
      cacheExtent: 20,
      primary: true,
      slivers: components.map((comp) {
        return comp;
        // return BuildComponent(comp);
      }).toList(),
    ));
  }
}

class BuildPageJson extends StatelessWidget {
  final Map<String, dynamic> jsonData;

  BuildPageJson(this.jsonData);

  @override
  Widget build(BuildContext context) {
    return PageShell(
        child: CustomScrollView(
      cacheExtent: 20,
      primary: true,
      // slivers: jsonData.map((comp) {
      //   // return BuildComponent(comp);
      // }).toList(),
    ));
  }
}

class BuildPageJsonFB extends StatelessWidget {
  final String pageData;
  // List<Widget> _components = [];

  BuildPageJsonFB({this.pageData = ''});

  @override
  Widget build(BuildContext context) {
    // print(pageData);

    return FutureBuilder<PageBloc>(
      future: fetchPage('$pageData'),
      builder: (context, snap) {
        ///// If there are any errors, display the error page
        if (snap.error != null)
          return ErrorPage(
            msg: 'Error loading reference from ',
            sub: 'BuildPage.build.FutureBuilder.fetchPage',
            code: '404',
          );
        ///// If we all good, parse the components

        if (snap.connectionState == ConnectionState.done) {
          ///// If we all good, parse the components
          ///

          var _comps = snap.data.components;

          if (_comps.length == 0) {
            return ErrorPage(
              msg: 'No componets in page ',
              code: "404",
              sub: "BuildPage.build.Components",
            );
          }
          // print(_comps);

          //  for (var comp in snap.data.components) {
          //    print(comp['mapValue']['fields']);

          //  }

          ///// Return the Page
          return PageShell(
              child: CustomScrollView(
            cacheExtent: 20,
            primary: true,
            slivers: _comps.map((comp) {
              //  print(comp['mapValue']['fields']['list']);
              return BuildComponentFB(comp);
            }).toList(),
          ));
        } else {
          return PageShell(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

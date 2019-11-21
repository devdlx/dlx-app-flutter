import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/components/Build/Component.dart';
import 'package:dlxapp/components/Build/blocPage.dart';
import 'package:dlxapp/components/Page/Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuildPage extends StatelessWidget {
  final List<Widget> components;
  final Map<String, dynamic> pageJson;

  BuildPage({this.components, this.pageJson});

  @override
  Widget build(BuildContext context) {
    return components != null
        ? PageShell(
            // safeArea: false,
            child: CustomScrollView(
              cacheExtent: 20,
              primary: true,
              slivers: components.map((comp) {
                // return comp;
                return BuildComponent(
                  componentJson: pageJson['components'],
                );
              }).toList(),
            ),
          )
        : pageJson != null
            ? BuildPageJson(pageJson)
            : PageShell(
                safeArea: true,
                color: Colors.orange,
                child: Center(
                  child: Text('No page data'),
                ),
              );
  }
}

class BuildPageJson extends StatelessWidget {
  final Map<String, dynamic> pageData;

  BuildPageJson(this.pageData);

  @override
  Widget build(BuildContext context) {
    var app = Provider.of<AppSettingsModel>(context);

    app.log.w(pageData);

    return pageData.containsKey('components')
        ? PageShell(
            child: Center(
              child: Text('BuildPageJson - has em! '),
            ),
          )
        : PageError(
            errorCode: '-_-',
            title: 'PageBuilder',
            msg: 'No components found \n {PageData} \n $pageData',
          );

    // return PageShell(
    //     child: CustomScrollView(
    //   cacheExtent: 20,
    //   primary: true,
    //   slivers: pageData.map((compData) {
    //     return BuildComponent( componentJson: compData,);
    //   }).toList(),
    // ));
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
          return PageError(
            msg: 'Error loading reference from ',
            title: 'BuildPage.build.FutureBuilder.fetchPage',
            errorCode: '404',
          );
        ///// If we all good, parse the components

        if (snap.connectionState == ConnectionState.done) {
          ///// If we all good, parse the components
          ///

          var _comps = snap.data.components;

          if (_comps.length == 0) {
            return PageError(
              msg: 'No componets in page ',
              errorCode: "404",
              title: "BuildPage.build.Components",
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
              return BuildComponent(
                componentJson: comp,
              );
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

  fetchPage(String s) {}
}

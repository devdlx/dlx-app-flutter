import 'package:flutter/material.dart';

class PageShell extends StatelessWidget {
  final Widget child;
  final color;
  final bool dialog;
  final bool safeArea;

  PageShell({this.child, this.color, this.dialog, this.safeArea = true});

  @override
  Widget build(BuildContext context) {
    Widget component = safeArea
        ? SafeArea(
            child: child,
          )
        : child;

    return Scaffold(
        appBar: dialog == true
            ? AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
            : null,
        // backgroundColor:
        //     this.color != null ? this.color : Theme.of(context).backgroundColor,
        body: component);
  }
}

class ErrorPage extends StatelessWidget {
  final String msg;
  final String sub;
  final String code;

  ErrorPage(
      {this.msg = "Unknown Error",
      this.sub = 'Unknown',
      this.code = 'No Code'});

  @override
  Widget build(BuildContext context) {
    // var route = Navigator.of(context);

    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Error : ${this.code}",
                    style: TextStyle(
                        fontSize: 48,
                        color: Theme.of(context).primaryColor.withOpacity(.8)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${this.msg}",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor.withOpacity(.8)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${this.sub}",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).primaryColor.withOpacity(.8)),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

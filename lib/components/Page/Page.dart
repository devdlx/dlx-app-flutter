import 'package:dlxapp/components/Utilities/ErrorMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageShell extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool dialog;
  final bool safeArea;
  final Color statusbarColor;

  PageShell(
      {this.child,
      this.color,
      this.dialog = false,
      this.safeArea = true,
      this.statusbarColor});

  @override
  Widget build(BuildContext context) {
    Widget component = safeArea
        ? SafeArea(
            child: child,
          )
        : child;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusbarColor != null ? statusbarColor : null,
      ),
      child: Scaffold(
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
          backgroundColor:
              this.color != null ? this.color : Theme.of(context).canvasColor,
          body: component),
    );
  }
}

class PageError extends StatelessWidget {
  final String msg;
  final String title;
  final String errorCode;
  final String type;

  PageError(
      {this.title = 'Unknown',
      this.errorCode = "Unknown Error",
      this.msg = '',
      this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Theme.of(context).accentColor,
        body: SafeArea(
      child: Center(
        child: Container(
          child: ErrorMessage(
            errorCode: errorCode,
            title: title,
            msg: msg,
            type: type,
          ),
        ),
      ),
    ));
  }
}

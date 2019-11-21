import 'package:flutter/material.dart';

class DLXOutlinedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;

  const DLXOutlinedButton({Key key, this.onPressed, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color = color ?? Theme.of(context).accentColor;

    return SizedBox(
        height: 32.0,
        child: FlatButton(
            shape: OutlineInputBorder(borderSide: BorderSide(color: _color)),
            child: Text(text, style: TextStyle(fontSize: 14.0, color: _color)),
            onPressed: onPressed));
  }
}

class DLXRaisedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;

  const DLXRaisedButton({Key key, this.onPressed, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color = color ?? Theme.of(context).accentColor;

    return SizedBox(
        height: 32.0,
        child: RaisedButton(
            shape: OutlineInputBorder(borderSide: BorderSide(color: _color)),
            color: _color,
            child: Text(text,
                style: TextStyle(fontSize: 14.0, color: Colors.white)),
            onPressed: onPressed));
  }
}

class DLXAppBar extends AppBar {
  final String titleString;
  final Color color;

  DLXAppBar({this.titleString, this.color});

  @override
  Color get backgroundColor => color ?? super.backgroundColor;

  @override
  Widget get title =>
      Text(titleString, style: TextStyle(color: Colors.white, fontSize: 18.0));

  @override
  IconThemeData get iconTheme => IconThemeData(color: Colors.white);
}

class DLXTextFormField extends StatefulWidget {
  final TextEditingController controller;

  final Function completeAction;

  final InputDecoration decoration;

  final FocusNode focusNode;
  final FocusNode nextFocusNode;

  final bool numberKeyboard;
  final bool email;
  final bool autoFocus;
  final bool obscureText;

  final TextInputAction textInputAction;

  final Function validator;

  const DLXTextFormField(
      {Key key,
      this.controller,
      this.completeAction,
      this.decoration,
      this.focusNode,
      this.nextFocusNode,
      this.numberKeyboard,
      this.email,
      this.autoFocus,
      this.obscureText,
      this.textInputAction,
      this.validator})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _DLXTextFormFieldState();
}

class _DLXTextFormFieldState extends State<DLXTextFormField> {
  @override
  Widget build(BuildContext context) => TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        autofocus: widget.autoFocus,
        decoration: widget.decoration,
        textInputAction: widget.textInputAction ?? widget.nextFocusNode == null
            ? null
            : TextInputAction.next,
        onFieldSubmitted: widget.completeAction ??
            (e) {
              if (widget.nextFocusNode != null) {
                widget.focusNode.unfocus();
                FocusScope.of(context).requestFocus(widget.nextFocusNode);
              }
            },
        keyboardType: widget.numberKeyboard
            ? TextInputType.numberWithOptions(decimal: false)
            : widget.email ? TextInputType.emailAddress : TextInputType.text,
        validator: widget.validator,
        obscureText: widget.obscureText,
      );
}

// remove
// var context;

// void showAlertDialog() {
//   DLXCustomDialog.showBasicDialog(
//       context,
//       DialogModel.alert("DLXDialogTitle",
//           text: "DLXDialogText",
//           backText: "DLXBackText",
//           actionText: "DLXActionText", action: (dialogContext) {
//             print("Do something");
//             Navigator.pop(dialogContext);
//           }));
// }

// void showDialog() {
//   // No action button if not specified
//   DLXCustomDialog.showBasicDialog(
//       context,
//       DialogModel(
//           title: "DLXDialogTitle",
//           text: "DLXDialogText",
//           backText: "DLXBackText",
//           backAction: (dialogContext) {
//             print("Do something when user press DLX")
//             Navigator.pop(dialogContext);
//           }

//       )
//   );
// }

typedef FunctionWithContext = Function(BuildContext context);

class DialogModel {
  String text;
  String title;
  String actionText;
  String backText;

  Function backAction;
  FunctionWithContext action;

  TextAlign textAlign;
  MainAxisAlignment actionsMainAxisAlignment;
  CrossAxisAlignment dialogCrossAxisAlignment;

  DialogModel(
      {this.text,
      this.title,
      this.actionText,
      this.action,
      this.backAction,
      this.backText,
      this.textAlign,
      this.actionsMainAxisAlignment});

  DialogModel.alert(this.title,
      {this.text, this.backText, this.actionText, this.action}) {
    actionsMainAxisAlignment = MainAxisAlignment.spaceBetween;
    textAlign = TextAlign.left;
    dialogCrossAxisAlignment = CrossAxisAlignment.start;
  }
}

class DLXCustomDialog extends StatefulWidget {
  final DialogModel model;

  const DLXCustomDialog({Key key, @required this.model}) : super(key: key);

  /// Use that to show a BasicDialog from the given context.
  static Future showBasicDialog(BuildContext context, model) {
    return showDialog(
        context: context, builder: (context) => DLXCustomDialog(model: model));
  }

  @override
  State<StatefulWidget> createState() => _DLXCustomDialogState();
}

class _DLXCustomDialogState extends State<DLXCustomDialog> {
  DialogModel get model => widget.model;

  // Pop the current view if there is no back action set
  void back() {
    if (model.backAction != null) {
      return model.backAction();
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: FractionalOffset.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  constraints: BoxConstraints(maxWidth: 600.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 20.0),
                  child: Material(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: model.dialogCrossAxisAlignment ??
                            CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          title,
                          text,
                          actions,
                        ],
                      )))
            ]));
  }

  Widget get title => model.title == null
      ? SizedBox()
      : Text(model.title,
          style: TextStyle(fontSize: 18.0),
          textAlign: model.textAlign ?? TextAlign.center);

  Widget get text => model.text == null
      ? SizedBox()
      : Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(model.text,
              style: TextStyle(fontSize: 16.0),
              textAlign: model.textAlign ?? TextAlign.center));

  Widget get actions => Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          backButton,
          model.action == null ? null : SizedBox(width: 20.0),
          actionButton()
        ]..removeWhere(
            (e) => e == null), // We don't want null values in the widget list
      ));

  Widget get backButton => DLXOutlinedButton(
        text: model.backText ?? "Retour",
        onPressed: back,
      );

  Widget actionButton() {
    // We don't want to show anything if there's no special action specified
    if (model.action != null)
      return DLXRaisedButton(
          text: model.actionText, onPressed: () => model.action(context));

    return null;
  }
}

abstract class DLXWidgetState<T extends StatefulWidget> extends State<T> {
  ThemeData get theme => Theme.of(context);

  TextTheme get textTheme => theme.textTheme;

  // Translations get translation => Translations.of(context);
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends DLXWidgetState<MyWidget> {
  @override
  Widget build(BuildContext context) {
    print(textTheme);
    // print(translation);
    print(theme);
    return Container();
  }
}

class DLXSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool overlapsContent;

  DLXSliverAppBar({this.overlapsContent = false, this.expandedHeight = 120});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var _opacity = ((shrinkOffset / expandedHeight) * 10) == double.infinity
        ? 1.0
        : ((expandedHeight / shrinkOffset) - 1);

    return Container(
      // decoration: BoxDecoration(
      //   color: Theme.of(context).primaryColor,
      //   // borderRadius: BorderRadius.circular(30),
      // ),
      // height: 60,
      margin: EdgeInsets.only(left: 50, right: 50, top: 40),
      child: Opacity(
        opacity: 1 - shrinkOffset / expandedHeight,
        child: Material(
          type: MaterialType.card,
          // color: Colors.red,
          clipBehavior: Clip.antiAlias,
          elevation: shrinkOffset / expandedHeight,
          borderRadius: BorderRadius.circular(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // MenuButton

              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),

              /// Search
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w200,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),

              // Spacer

              SizedBox(
                width: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

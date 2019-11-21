import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    Key key,
    this.errorCode,
    this.title,
    this.msg,
    this.type,
  }) : super(key: key);

  final String errorCode;
  final String title;
  final String msg;
  final String type;

  @override
  Widget build(BuildContext context) {
    var color = Colors.red;

    switch (type) {
      case 'warning':
        color = Colors.orange;
        break;

      case 'info':
        color = Colors.blue;
        break;

      case 'warningx':
        color = Colors.orange;
        break;
      default:
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        this.errorCode != null
            ? Text(
                "Code : ${this.errorCode}",
                style: TextStyle(fontSize: 48, color: color.withOpacity(.8)),
              )
            : null,
        SizedBox(
          height: 10,
        ),
        Text(
          "${this.title}",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            // color: Theme.of(context).primaryColor.withOpacity(.8)
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "${this.msg}",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w300,
            // color: Theme.of(context).primaryColor.withOpacity(.8)
          ),
        ),
        SizedBox(
          height: 60,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            'Submit Error Ticket',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
        ),
      ],
    );
  }
}

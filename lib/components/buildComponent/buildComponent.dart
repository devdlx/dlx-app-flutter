import 'package:flutter/material.dart';

////  ----   Import Utilities and Error Widgets
import 'package:dlxapp/utils/utils.dart';
import 'package:dlxapp/components/shellPage/shellPage.dart';

////  ----   Import all components
import 'package:dlxapp/components/buildMediaItem/buildMediaItem.dart';

class BuildBlocFuture<T> extends StatelessWidget {
  final String path;

  BuildBlocFuture(this.path);

  @override
  Widget build(BuildContext context) {
    // detect this.runtimeType
    String _type = this.runtimeType.toString();
    String _compType = _type
        .replaceAll('BuildBlocFuture', '')
        .replaceAll('<', '')
        .replaceAll('>', '');
    print(_compType);

    return FutureBuilder(
      future: fetchFirestore(this.path),
      builder: (context, snap) {
        ///// If there are any errors, display the error page
        if (snap.error != null)
          return ErrorPage(
            msg: 'Error loading reference from ${this.path}',
            sub: 'BuildBlocFuture.build.FutureBuilder.fetchApiFB',
            code: '404',
          );

        if (snap.connectionState == ConnectionState.done) {
          return MediaItem(MediaItemModel('', 'John Wicker', '2016'));
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

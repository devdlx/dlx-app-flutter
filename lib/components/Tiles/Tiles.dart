import 'package:cached_network_image/cached_network_image.dart';
import 'package:dlxapp/apps/saucetv/AppSettings.dart';
import 'package:dlxapp/apps/saucetv/MediaController.dart';
import 'package:dlxapp/apps/saucetv/components/PlaybackControls.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:dlxapp/utils/utils.dart' as utils;
import 'package:shimmer/shimmer.dart';

class MediaTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final String cover;

  final utils.DataItem data;

  final double borderRadius;
  const MediaTile(
      {Key key,
      this.title = '',
      this.subtitle = '',
      this.cover = '',
      this.borderRadius = 28,
      this.data})
      : super(key: key);

  @override
  _MediaTileState createState() => _MediaTileState();
}

class _MediaTileState extends State<MediaTile> {
  var log = Logger();

  bool match = false;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    var mediaController = Provider.of<MediaController>(context);

    String network =
        this.widget.data.data['fields']['video_url']['stringValue'];

    if (mediaController.nowPlaying != null) {
      // log.e(mediaController.nowPlaying.data['id']);

      // match = mediaController.nowPlaying.data['id'] == this.data.data['id'];
      match = mediaController.nowPlaying.data['name'] ==
          this.widget.data.data['name'];

      // log.e(match);
    }

    return Stack(
      children: <Widget>[
        Positioned.fill(
          bottom: 0.0,
          child: new ThumbTile(
            title: widget.title,
            borderRadius: widget.borderRadius,
            subtitle: widget.subtitle,
            data: widget.data,
            cover: widget.cover,
            elevation: match ? 8 : 0,
          ),
        ),
        !match
            ? Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                      // splashColor: Colors.red,
                      // onTap: () => Provider.of<AppSettingsModel>(context)
                      //     .pushTo('details', context, data: data),

                      onTap: () {
                        // log.e(this.data.data['asset']);
                        setState(() {
                          loading = true;
                          mediaController
                              .setController(
                                  network: network,
                                  // asset: this.data.data['asset'],
                                  dataItem: widget.data)
                              .then((r) {
                            // log.e(r);
                            mediaController.play();
                            loading = false;
                          });
                        });
                      },
                    )))
            : Container(),
        match
            ? Positioned.fill(
                child: Container(
                    color: Theme.of(context).canvasColor.withOpacity(.2),
                    child: PlayPauseButton(iconSize: 60)))
            : Container(),
        loading ? Positioned.fill(child: ShimmerPlaceholder()) : Container(),
      ],
    );
  }
}

class ThumbTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cover;

  final utils.DataItem data;

  final double borderRadius;

  final double elevation;

  const ThumbTile({
    Key key,
    this.title,
    this.subtitle,
    this.cover,
    this.borderRadius = 28,
    this.elevation = 0,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      animationDuration: Duration(milliseconds: 700),
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.all(Radius.circular(this.borderRadius)),
      child: new GridTile(
        footer: new GridTileBar(
          title: this.title != null
              ? Text(
                  '${this.title}',
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.black.withOpacity(.5),
                          offset: Offset(-2, 1),
                          spreadRadius: 6)
                    ],
                    //  fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              : null,
          subtitle: this.subtitle != null
              ? Text("  ${this.subtitle}",
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.black.withOpacity(.5),
                          offset: Offset(-2, 1),
                          spreadRadius: 6)
                    ],
                  ))
              : null,
        ),
        child: this.cover != null
            ? CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: "${this.cover}",
                placeholder: (context, url) => ShimmerPlaceholder(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              )
            : Container(),
      ),
    );
  }
}

class ShimmerPlaceholder extends StatelessWidget {
  const ShimmerPlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColorDark.withOpacity(.5),
      highlightColor: Theme.of(context).primaryColorDark.withOpacity(.6),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.white,
      ),
    );
  }
}

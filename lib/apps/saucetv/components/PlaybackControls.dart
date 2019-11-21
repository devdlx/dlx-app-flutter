import 'package:dlxapp/apps/saucetv/MediaController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class PlayPauseButton extends StatefulWidget {
  final double iconSize;

  const PlayPauseButton({Key key, this.iconSize}) : super(key: key);

  @override
  _PlayPauseButtonState createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> {
  double iconSize = 24;
  @override
  void initState() {
    super.initState();
    iconSize = widget.iconSize != null ? widget.iconSize : 24;
  }

  @override
  Widget build(BuildContext context) {
    // MediaController mediaController = Provider.of<MediaController>(context);

    return Consumer<MediaController>(
      builder: (context, mediaController, child) {
        return mediaController.controller.value.isPlaying
            ? IconButton(
                onPressed: () {
                  mediaController.pause();
                },
                icon: Icon(
                  Icons.pause,
                  size: iconSize,
                ),
              )
            : IconButton(
                onPressed: () {
                  mediaController.play();
                },
                icon: Icon(
                  Icons.play_arrow,
                  size: iconSize,
                ),
              );
      },
    );
  }
}

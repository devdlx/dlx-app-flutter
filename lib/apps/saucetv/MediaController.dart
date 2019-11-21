import 'package:dlxapp/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class MediaController extends ChangeNotifier {
  VideoPlayerController controller;
  VoidCallback listener;
  bool initialized = false;
  bool hasFile = false;

  var logger = Logger();

  DataItem nowPlaying;

  MediaController() {
    // init();
    controller = VideoPlayerController.network('');
    logger.d("SauceTV MediaController");
  }

  // init() async {}

  void play() {
    controller.play().then((_) {
      // logger.i(controller.value.isPlaying);
      notifyListeners();
    });
  }

  void pause() {
    controller.pause().then((_) {
      // logger.i(controller.value.isPlaying);
      notifyListeners();
    });
  }

  Future<bool> setController(
      {String network, String asset, DataItem dataItem}) async {
    logger.w('Setting up new controller');

    logger.w('1st check \n controller != null : ${controller != null}');

    if (controller != null) {
      // controller.removeListener(listener);
      controller.dispose();
      controller = null;
    }

    logger.w(
        '2nd check after disposed of last one \n  controller != null : ${controller != null}');

    if (network != null) {
      controller = VideoPlayerController.network(network);
    }

    if (asset != null) {
      // logger.i(asset);
      controller = VideoPlayerController.asset(asset);
    }

    logger.w(
      '3rd check after Network/Asset selected \n  controller != null : ${controller != null} ',
    );

    listener = () {
      // logger.d(
      //     "listener : controller.value.initialized : ${controller.value.initialized}");

      // if (controller.value.initialized == true && initialized == false) {
      //   this.initialized = false;

      // } else {
      //   this.initialized = false;
      // }


    };

    controller.setLooping(false);
    // controller.play();

    return controller.initialize().then((i) {
      // logger
      //     .i('controller.value.initialized : ${controller.value.initialized}');
      this.initialized = controller.value.initialized;
      controller.addListener(listener);
      if (dataItem != null) {
        this.nowPlaying = dataItem;
      }
      notifyListeners();

      return Future.value(true);
    }).catchError((_error) {
      return Future.error(false);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(listener);
  }
}

class VideoView extends StatefulWidget {
  final String network;
  final String asset;
  final String cover;

  VideoView({Key key, this.network, this.cover, this.asset}) : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  // VideoPlayerController controller;

  // bool initialized = false;

  VoidCallback listener;

  // String get cover => widget.cover;
  // String get network => widget.cover;
  MediaController mediaController;
  @override
  void initState() {
    super.initState();

    // controller = VideoPlayerController.network(widget.network);

    // listener = () {
    //   if (!mounted) {
    //     return;
    //   }
    //   if (initialized != controller.value.initialized) {
    //     initialized = controller.value.initialized;
    //     setState(() {});
    //   }
    // };
    // controller.addListener(listener);

    // controller.initialize();
    // controller.setLooping(false);
    // controller.play();

    if (SchedulerBinding.instance.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      SchedulerBinding.instance.addPostFrameCallback((_) => setup(context));
    }
  }

  setup(context) {
    var logger = Logger();
    mediaController = Provider.of<MediaController>(context);
    mediaController.setController(asset: widget.asset).then((finished) {
      logger.e('videoview MediaController - ${mediaController.initialized}');
      setState(() {});
    });
  }

  // @override
  // void deactivate() {
  //   super.deactivate();
  // }

  // @override
  // void dispose() {
  //   // controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // print('videoview initialized - $initialized');
    // print('videoview widget.cover - ${widget.cover}');
    // print('videoview widget.network - ${widget.network}');

    // mediaController.setController(network: widget.network);

    // if (mediaController.controller.value.initialized) {
    //   return AspectRatio(
    //     aspectRatio: 16 / 9,
    //     child: GestureDetector(
    //         onTap: () {
    //           mediaController.controller.value.isPlaying
    //               ? mediaController.pause()
    //               : mediaController.play();
    //         },
    //         child: VideoPlayer(mediaController.controller)),
    //     // child: VideoPlayPause(mediaController.controller),
    //   );
    // }

    var logger = Logger();

    // logger.e(mediaController.initialized);

    if (mediaController == null) {
      return Container(
        margin: EdgeInsets.all(32),
        padding: EdgeInsets.all(16),
        height: 100,
        color: Colors.green.shade900,
        // child: AspectRatio(
        //   aspectRatio: 1.6,
        //   child: Image.network(
        //     widget.cover,
        //     fit: BoxFit.cover,
        //   ),
        // ),

        child: Text(
          'Loading',
        ),
      );
    }

    return Container(
      // margin: EdgeInsets.all(32),
      // padding: EdgeInsets.all(16),
      // height: 100,
      color: Colors.deepOrangeAccent,
      // child: AspectRatio(
      //   aspectRatio: 1.6,
      //   child: Image.network(
      //     widget.cover,
      //     fit: BoxFit.cover,
      //   ),
      // ),

      child: GestureDetector(
        onTap: () {
          mediaController.controller.value.isPlaying
              ? mediaController.pause()
              : mediaController.play();
        },
        // child: Text(
        //   '${mediaController.controller.value.initialized}',
        // ),

        child: AspectRatio(
          aspectRatio: 1.6,
          child: Image.network(
            widget.cover,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class VideoPlayPause extends StatefulWidget {
  VideoPlayPause(this.controller);

  final VideoPlayerController controller;

  @override
  State createState() {
    return _VideoPlayPauseState();
  }
}

class _VideoPlayPauseState extends State<VideoPlayPause> {
  _VideoPlayPauseState() {
    listener = () {
      if (!mounted) return;
      setState(() {});
    };
  }

  FadeAnimation imageFadeAnim =
      FadeAnimation(child: const Icon(Icons.play_arrow, size: 100.0));
  VoidCallback listener;

  VideoPlayerController get controller => widget.controller;

  @override
  void initState() {
    super.initState();
    // controller.addListener(listener);
    controller.setVolume(1.0);
    controller.play();
  }

  @override
  void deactivate() {
    // controller.setVolume(0.0);
    // controller.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[
      GestureDetector(
        child: VideoPlayer(controller),
        onTap: () {
          if (!controller.value.initialized) {
            return;
          }
          if (controller.value.isPlaying) {
            imageFadeAnim =
                FadeAnimation(child: const Icon(Icons.pause, size: 100.0));
            controller.pause();
          } else {
            imageFadeAnim =
                FadeAnimation(child: const Icon(Icons.play_arrow, size: 100.0));
            controller.play();
          }
        },
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: VideoProgressIndicator(
          controller,
          allowScrubbing: true,
        ),
      ),
      Center(child: imageFadeAnim),
      Center(
          child: controller.value.isBuffering
              ? const CircularProgressIndicator()
              : null),
    ];

    return Stack(
      fit: StackFit.passthrough,
      children: children,
    );
  }
}

class FadeAnimation extends StatefulWidget {
  FadeAnimation(
      {this.child, this.duration = const Duration(milliseconds: 500)});

  final Widget child;
  final Duration duration;

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: widget.duration, vsync: this);
    animationController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    animationController.forward(from: 0.0);
  }

  @override
  void deactivate() {
    animationController.stop();
    super.deactivate();
  }

  @override
  void didUpdateWidget(FadeAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.child != widget.child) {
      animationController.forward(from: 0.0);
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return animationController.isAnimating
        ? Opacity(
            opacity: 1.0 - animationController.value,
            child: widget.child,
          )
        : Container();
  }
}

typedef Widget VideoWidgetBuilder(
    BuildContext context, VideoPlayerController controller);

abstract class PlayerLifeCycle extends StatefulWidget {
  PlayerLifeCycle(this.dataSource, this.childBuilder);

  final VideoWidgetBuilder childBuilder;
  final String dataSource;
}

/// A widget connecting its life cycle to a [VideoPlayerController] using
/// a data source from the network.
class NetworkPlayerLifeCycle extends PlayerLifeCycle {
  NetworkPlayerLifeCycle(String dataSource, VideoWidgetBuilder childBuilder)
      : super(dataSource, childBuilder);

  @override
  _NetworkPlayerLifeCycleState createState() => _NetworkPlayerLifeCycleState();
}

/// A widget connecting its life cycle to a [VideoPlayerController] using
/// an asset as data source
class AssetPlayerLifeCycle extends PlayerLifeCycle {
  AssetPlayerLifeCycle(String dataSource, VideoWidgetBuilder childBuilder)
      : super(dataSource, childBuilder);

  @override
  _AssetPlayerLifeCycleState createState() => _AssetPlayerLifeCycleState();
}

abstract class _PlayerLifeCycleState extends State<PlayerLifeCycle> {
  VideoPlayerController controller;

  @override

  /// Subclasses should implement [createVideoPlayerController], which is used
  /// by this method.
  void initState() {
    super.initState();
    controller = createVideoPlayerController();
    controller.addListener(() {
      if (controller.value.hasError) {
        // print(controller.value.errorDescription);
      }
    });
    controller.initialize();
    controller.setLooping(true);
    controller.play();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.childBuilder(context, controller);
  }

  VideoPlayerController createVideoPlayerController();
}

class _NetworkPlayerLifeCycleState extends _PlayerLifeCycleState {
  @override
  VideoPlayerController createVideoPlayerController() {
    return VideoPlayerController.network(widget.dataSource);
  }
}

class _AssetPlayerLifeCycleState extends _PlayerLifeCycleState {
  @override
  VideoPlayerController createVideoPlayerController() {
    return VideoPlayerController.asset(widget.dataSource);
  }
}

/// A filler card to show the video in a list of scrolling contents.
Widget buildCard(String title) {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.airline_seat_flat_angled),
          title: Text(title),
        ),
        // TODO(jackson): Remove when deprecation is on stable branch
        // ignore: deprecated_member_use
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {
                  /* ... */
                },
              ),
              FlatButton(
                child: const Text('SELL TICKETS'),
                onPressed: () {
                  /* ... */
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class VideoInListOfCards extends StatelessWidget {
  VideoInListOfCards(this.controller);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        buildCard("Item a"),
        buildCard("Item b"),
        buildCard("Item c"),
        buildCard("Item d"),
        buildCard("Item e"),
        buildCard("Item f"),
        buildCard("Item g"),
        Card(
            child: Column(children: <Widget>[
          Column(
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.cake),
                title: Text("Video video"),
              ),
              Stack(
                  alignment: FractionalOffset.bottomRight +
                      const FractionalOffset(-0.1, -0.1),
                  children: <Widget>[
                    AspectRatioVideo(controller),
                    Image.asset('assets/flutter-mark-square-64.png'),
                  ]),
            ],
          ),
        ])),
        buildCard("Item h"),
        buildCard("Item i"),
        buildCard("Item j"),
        buildCard("Item k"),
        buildCard("Item l"),
      ],
    );
  }
}

class AspectRatioVideo extends StatefulWidget {
  AspectRatioVideo(this.controller);

  final VideoPlayerController controller;

  @override
  AspectRatioVideoState createState() => AspectRatioVideoState();
}

class AspectRatioVideoState extends State<AspectRatioVideo> {
  VideoPlayerController get controller => widget.controller;
  bool initialized = false;

  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      if (!mounted) {
        return;
      }
      if (initialized != controller.value.initialized) {
        initialized = controller.value.initialized;
        setState(() {});
      }
    };
    controller.addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    if (initialized) {
      return Center(
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayPause(controller),
        ),
      );
    } else {
      return Container();
    }
  }
}

void main() {
  runApp(
    MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Video player example'),
            bottom: const TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.cloud),
                  text: "Remote",
                ),
                Tab(icon: Icon(Icons.insert_drive_file), text: "Asset"),
                Tab(icon: Icon(Icons.list), text: "List example"),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    const Text('With remote m3u8'),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: NetworkPlayerLifeCycle(
                        'http://184.72.239.149/vod/smil:BigBuckBunny.smil/playlist.m3u8',
                        (BuildContext context,
                                VideoPlayerController controller) =>
                            AspectRatioVideo(controller),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    const Text('With assets mp4'),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: AssetPlayerLifeCycle(
                          'assets/Butterfly-209.mp4',
                          (BuildContext context,
                                  VideoPlayerController controller) =>
                              AspectRatioVideo(controller)),
                    ),
                  ],
                ),
              ),
              AssetPlayerLifeCycle(
                  'assets/Butterfly-209.mp4',
                  (BuildContext context, VideoPlayerController controller) =>
                      VideoInListOfCards(controller)),
            ],
          ),
        ),
      ),
    ),
  );
}

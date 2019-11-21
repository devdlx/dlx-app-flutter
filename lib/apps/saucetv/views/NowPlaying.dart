import 'package:dlxapp/apps/saucetv/MediaController.dart';
import 'package:dlxapp/apps/saucetv/components/PlaybackControls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';


class NowPlayingDraggable extends StatefulWidget {
  final Widget child;
  NowPlayingDraggable({this.child});

  @override
  _NowPlayingDraggableState createState() => _NowPlayingDraggableState();
}

class _NowPlayingDraggableState extends State<NowPlayingDraggable>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  /// The alignment of the card as it is dragged or being animated.
  ///
  /// While the card is being dragged, this value is set to the values computed
  /// in the GestureDetector onPanUpdate callback. If the animation is running,
  /// this value is set to the value of the [_animation].
  Alignment _bottomAlignment = Alignment(0.0, 0.8666);
  Alignment _topAlignment = Alignment.topCenter;

  Alignment _dragAlignment;

  bool _finalTop = false;

  Animation<Alignment> _animation;

  /// Calculates and runs a [SpringSimulation].
  void _runAnimation(Offset pixelsPerSecond, Size size) {
    _animation = _controller.drive(
      AlignmentTween(
          begin: _dragAlignment,
          // end: Alignment.center,
          end: _finalTop ? _topAlignment : _bottomAlignment),
    );
    // Calculate the velocity relative to the unit interval, [0,1],
    // used by the animation controller.
    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(
      mass: 30,
      stiffness: 1,
      damping: 1,
    );

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _dragAlignment = _bottomAlignment;
    _controller.addListener(() {
      setState(() {
        _dragAlignment = _animation.value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var log = Logger();

  double containerWidth = 6000;
  double containerHeight = 80;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onDoubleTap: () {
        // setState(() {
        //   _finalTop = !_finalTop;
        //   _runAnimation(Offset(0, 30), size);
        // });
      },
      onPanDown: (details) {
        _controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height - 80 / 2),
          );

          // log.i(_dragAlignment.y);

          // log.e(_dragAlignment.y > -0.8 && _dragAlignment.y < -0.3 && _dragAlignment.y < 0);

          if (_dragAlignment.y > -0.8 &&
              _dragAlignment.y < -0.3 &&
              _dragAlignment.y < 0) {
            _finalTop = false;
            // containerHeight = size.height;
          } else if (_dragAlignment.y < 1 && _dragAlignment.y > 0.3) {
            _finalTop = true;
          }

          // log.e((_dragAlignment.y * 10000) / 80);
        });
      },
      onPanEnd: (details) {
        // log.wtf(details);
        _runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align(
          alignment: _dragAlignment,
          child: AnimatedContainer(
            // Use the properties stored in the State class.
            width: containerWidth,
            height: containerHeight,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            // Define how long the animation should take.
            duration: Duration(seconds: 1),
            // Provide an optional curve to make the animation feel smoother.
            curve: Curves.fastOutSlowIn,

            padding: EdgeInsets.all(8),

            child: Row(
              children: <Widget>[
                //
                //    Video/Cover Art
                //

                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Consumer<MediaController>(
                    builder: (context, mediaController, child) {
                      var log = Logger();
                      // log.i(mediaController.controller.value.position);
                      return Container(
                        color: Colors.lightBlueAccent,
                      );
                      // return VideoPlayer(mediaController.controller);
                    },
                  ),
                ),

                //
                //    Meta Data
                //

                SizedBox(
                  width: 16,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Title', style: Theme.of(context).textTheme.title
                        // .copyWith(fontSize: 16),
                        ),
                    Text('Subtitle',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                            color: Colors.white.withOpacity(.7), fontSize: 12)),
                  ],
                ),

                //
                //     Controls
                //

                Flexible(
                  flex: 1,
                  child: Container(),
                ),

                Row(
                  children: <Widget>[
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(Icons.skip_previous),
                    // ),
                    PlayPauseButton(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.skip_next),
                    ),
                  ],
                ),

                SizedBox(
                  width: 16,
                )
              ],
            ),
          )),
    );
  }
}

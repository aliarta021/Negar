import 'package:flutter/material.dart';
import 'package:negar/blocs/trendingAlbumBloc.dart';
import 'package:negar/styles/color_palette.dart';
import 'dart:math' as math;

class PlayedMusicAnim extends StatefulWidget {
  const PlayedMusicAnim({Key? key, required this.album}) : super(key: key);
  @override
  _PlayedMusicAnimState createState() => _PlayedMusicAnimState(album);
  final TrendingAlbumBloc album;
}

class _PlayedMusicAnimState extends State<PlayedMusicAnim>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 15),
  )..repeat();
  final TrendingAlbumBloc _album;

  _PlayedMusicAnimState(this._album);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 3.0 * math.pi,
          child: child,
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(_album.imgURL),
            radius: 95,
          ),
          CircleAvatar(
            backgroundColor: ColorPalette.light.white,
            radius: 18,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:negar/animations/playedMusicAnim.dart';
import 'package:negar/assets/assets.dart';
import 'package:negar/blocs/trendingAlbumBloc.dart';
import 'package:negar/styles/color_palette.dart';
import 'package:negar/styles/negar_theme.dart';
import 'package:negar/ui/components/trendingListTile.dart';
import 'package:negar/ui/widgets/bottomIconStyle.dart';
import 'package:provider/provider.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({Key? key, required this.album}) : super(key: key);
  static const routeNamed = '/nowPlaying';
  final TrendingAlbumBloc album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: NegarTheme.lightTheme.primaryColor,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomIconStyle(
                    assetsIcon: Assets.backIcon,
                    colorIcon: ColorPalette.light.activeIconColor,
                    onTapButton: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Now Playing',
                    style: NegarTheme.lightTheme.textTheme.bodyText1,
                  ),
                  BottomIconStyle(
                    assetsIcon: Assets.verticalMenuIcon,
                    colorIcon: ColorPalette.light.activeIconColor,
                    onTapButton: null,
                  ),
                ],
              ),
            ),
            Container(
              child: Hero(
                tag: album.imgURL,
                child: CircleAvatar(
                  radius: 105,
                  backgroundColor: ColorPalette.light.primaryColor,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: ColorPalette.light.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(6.0, 6.0),
                        ),
                        BoxShadow(
                          color: ColorPalette.light.white,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-6.0, -6.0),
                        ),
                      ],
                    ),
                    child: PlayedMusicAnim(album: album,),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 38,bottom: 6),
              child: Text(
                album.titleAlbum,
                style: NegarTheme.lightTheme.textTheme.bodyText2!.copyWith(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text(
                album.nameSinger,
                style: NegarTheme.lightTheme.textTheme.subtitle1!
                    .copyWith(fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BottomIconStyle(
                    assetsIcon: Assets.rewindIcon,
                    colorIcon: ColorPalette.light.activeIconColor,
                    onTapButton: null,
                  ),
                  SizedBox(width: 22,),
                  BottomIconStyle(
                    assetsIcon: Assets.pauseIcon,
                    colorIcon: ColorPalette.light.activeIconColor,
                    onTapButton: null,
                  ),
                  SizedBox(width: 22,),
                  BottomIconStyle(
                    assetsIcon: Assets.forwardIcon,
                    colorIcon: ColorPalette.light.activeIconColor,
                    onTapButton: null,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

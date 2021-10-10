import 'package:flutter/material.dart';
import 'package:negar/assets/assets.dart';
import 'package:negar/blocs/popularBloc.dart';
import 'package:negar/blocs/trendingAlbumBloc.dart';
import 'package:negar/styles/color_palette.dart';
import 'package:negar/ui/components/popularListTile.dart';
import 'package:negar/ui/components/trendingListTile.dart';
import 'package:negar/ui/pages/nowPlaying.dart';
import 'package:negar/ui/widgets/bottomIconStyle.dart';
import 'package:negar/ui/widgets/box-popular.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/single_child_widget.dart';
import 'package:negar/styles/negar_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants/app_config.dart';

class Negar extends StatelessWidget {
  const Negar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: <SingleChildWidget>[
          ChangeNotifierProvider<PopularListTile>(
            create: (_) => PopularListTile(),
          ),
          ChangeNotifierProvider<TrendingListTile>(
            create: (_) => TrendingListTile(),
          ),
          Provider<GlobalKey<NavigatorState>>(
              create: (_) =>
                  GlobalKey<NavigatorState>(debugLabel: 'mainNavigator'))
        ],
        builder: (BuildContext context, Widget? child) => EasyLocalization(
          supportedLocales: AppConfig.supportedLocales,
          path: AppConfig.localePath,
          startLocale: AppConfig.startLocale,
          fallbackLocale: AppConfig.startLocale,
          useOnlyLangCode: true,
          child: Builder(
            builder: (BuildContext context) => MaterialApp(
              title: AppConfig.name,
              locale: context.locale,
              debugShowCheckedModeBanner: AppConfig.debug,
              theme: NegarTheme.lightTheme,
              darkTheme: NegarTheme.darkTheme,
              routes: {

              },
              home: Scaffold(
                appBar: null,
                body: Container(
                  color: NegarTheme.lightTheme.primaryColor,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      // POPULAR...........................
                      Container(
                          padding: const EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            'POPULAR',
                            style: NegarTheme.lightTheme.textTheme.bodyText1,
                          )),
                      Container(
                        child: SizedBox(
                          height: 300,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => boxPopular(
                              urlImagePopular:
                                  PopularListTile().popularList[index].imgURL,
                              textPoplar: PopularListTile()
                                  .popularList[index]
                                  .textPopular,
                              followerPoplar: PopularListTile()
                                  .popularList[index]
                                  .followerPopular,
                            ),
                          ),
                        ),
                      ),

                      //  TRENDING ALBUMS
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Text(
                          'TRENDING ALBUMS',
                          style: NegarTheme.lightTheme.textTheme.bodyText1,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 27, top: 24, right: 27, bottom: 24),
                        padding: const EdgeInsets.all(15),
                        height: 254,
                        decoration: BoxDecoration(
                          color: ColorPalette.light.primaryColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: ColorPalette.light.black.withOpacity(0.3),
                              blurRadius: 15,
                              spreadRadius: 1,
                              offset: Offset(3.0, 3.0),
                            ),
                            BoxShadow(
                              color: ColorPalette.light.white,
                              blurRadius: 15,
                              spreadRadius: 1,
                              offset: Offset(-4.0, -4.0),
                            ),
                          ],
                        ),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) => Container(
                              child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NowPlaying(
                                    album:
                                        Provider.of<TrendingListTile>(context)
                                            .albumList[index],
                                  ),
                                ),
                              );
                            },
                            leading: Hero(
                              tag: Provider.of<TrendingListTile>(context)
                                  .albumList[index]
                                  .imgURL,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        Provider.of<TrendingListTile>(context)
                                            .albumList[index]
                                            .imgURL),
                                    radius: 25,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: ColorPalette.light.white,
                                    radius: 5,
                                  ),
                                ],
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 6.0),
                              child: Text(
                                Provider.of<TrendingListTile>(context)
                                    .albumList[index]
                                    .titleAlbum,
                                style:
                                    NegarTheme.lightTheme.textTheme.bodyText2,
                              ),
                            ),
                            subtitle: Text(
                              Provider.of<TrendingListTile>(context)
                                  .albumList[index]
                                  .nameSinger,
                              style: NegarTheme.lightTheme.textTheme.subtitle1,
                            ),
                            trailing: Text(
                              Provider.of<TrendingListTile>(context)
                                  .albumList[index]
                                  .timeMusic,
                              style: NegarTheme.lightTheme.textTheme.subtitle1,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  color: ColorPalette.light.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomIconStyle(
                        assetsIcon: Assets.homeIcon,
                        colorIcon: ColorPalette.light.activeIconColor,
                        onTapButton: null,
                      ),
                      BottomIconStyle(
                        assetsIcon: Assets.playListIcon,
                        colorIcon: ColorPalette.light.inactiveIconColor,
                        onTapButton: null,
                      ),
                      BottomIconStyle(
                        assetsIcon: Assets.favoriteIcon,
                        colorIcon: ColorPalette.light.inactiveIconColor,
                        onTapButton: null,
                      ),
                      BottomIconStyle(
                        assetsIcon: Assets.searchIcon,
                        colorIcon: ColorPalette.light.inactiveIconColor,
                        onTapButton: null,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

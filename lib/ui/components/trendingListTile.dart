import 'package:flutter/material.dart';
import 'package:negar/assets/assets.dart';
import 'package:negar/blocs/trendingAlbumBloc.dart';

class TrendingListTile extends ChangeNotifier {
  List<TrendingAlbumBloc> _albumList = [
    TrendingAlbumBloc(
      imgURL: Assets.popularImg4,
      id: '',
      titleAlbum: 'Negar',
      nameSinger: 'Ali Sorena',
      timeMusic: '3:85',
    ),
    TrendingAlbumBloc(
      imgURL: Assets.popularImg1,
      id: '',
      titleAlbum: 'Everyday Life',
      nameSinger: 'Coldplay',
      timeMusic: '3:42',
    ),
    TrendingAlbumBloc(
      imgURL: Assets.popularImg3,
      id: '',
      titleAlbum: 'Kamikaze',
      nameSinger: 'Eminem',
      timeMusic: '4:85',
    ),
    TrendingAlbumBloc(
      imgURL: Assets.popularImg2,
      id: '',
      titleAlbum: 'Shape Of You',
      nameSinger: 'Ed Sheeran',
      timeMusic: '3:12',
    ),
  ];
  List<TrendingAlbumBloc> get albumList {
    return _albumList;
  }
}

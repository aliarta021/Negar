import 'package:flutter/material.dart';
import 'package:negar/assets/assets.dart';
import 'package:negar/blocs/popularBloc.dart';

class PopularListTile extends ChangeNotifier {
  List<PopularBloc> _popularList = [
    PopularBloc(
      imgURL: Assets.popularImg1,
      id: '',
      textPopular: 'Pop Rock',
      followerPopular: '751,885 Followers',
    ),
    PopularBloc(
      imgURL: Assets.popularImg2,
      id: '',
      textPopular: 'Heavy Metal',
      followerPopular: '601,285 Followers',
    ),
    PopularBloc(
      imgURL: Assets.popularImg3,
      id: '',
      textPopular: 'Hip-Hop',
      followerPopular: '905,385 Followers',
    ),
    PopularBloc(
      imgURL: Assets.popularImg4,
      id: '',
      textPopular: 'Persian Hip-Hop',
      followerPopular: '1,205,885 Followers',
    ),
    PopularBloc(
      imgURL: Assets.popularImg2,
      id: '',
      textPopular: 'Heavy Metal',
      followerPopular: '601,285 Followers',
    ),
  ];

  List<PopularBloc> get popularList => _popularList;
}

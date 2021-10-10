import 'package:flutter/material.dart';

class TrendingAlbumBloc extends ChangeNotifier{
  final String imgURL;
  final String id;
  final String titleAlbum;
  final String nameSinger;
  final String timeMusic;

  TrendingAlbumBloc({required this.imgURL, required this.id, required this.titleAlbum, required this.nameSinger,required this.timeMusic});
}
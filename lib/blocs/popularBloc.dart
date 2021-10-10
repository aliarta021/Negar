import 'package:flutter/cupertino.dart';

class PopularBloc extends ChangeNotifier{
  final String imgURL;
  final String id;
  final String textPopular;
  final String followerPopular;

  PopularBloc({required this.imgURL, required this.id, required this.textPopular, required this.followerPopular});
}
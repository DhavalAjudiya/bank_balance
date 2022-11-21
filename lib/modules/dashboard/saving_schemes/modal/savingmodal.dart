import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/assets_path.dart';
import 'package:flutter/material.dart';

class GridItem {
  final String imageUrl;
  final String price1;
  final String price2;

  GridItem({
    required this.imageUrl,
    required this.price1,
    required this.price2,
  });
}

final savingList = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Public',
    price2: 'PF',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Employee',
    price2: 'PF',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'National',
    price2: 'PS',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Senior',
    price2: 'CS',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'National',
    price2: 'SC',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Post',
    price2: 'Office',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'PM',
    price2: 'Vaya',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'PM',
    price2: 'Jan Dhan',
  ),
];

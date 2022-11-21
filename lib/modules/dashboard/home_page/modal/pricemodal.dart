import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/assets_path.dart';
import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String price1;
  final String price2;
  final String title1;
  final String title2;
  final String title3;
  final Color? color;

  Slide({
    required this.imageUrl,
    required this.price1,
    required this.price2,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.color,
  });
}

final slideList = [
  Slide(
    imageUrl: "Today's Gold price",
    price1: '49,615',
    price2: "45,480",
    title1: "24K Gold",
    title2: "22K Gold",
    title3: "Mumbai Maharastra.",
    color: AppColors.dartBlue,
  ),
  Slide(
    imageUrl: "Today's Fuel price",
    price1: '106.31',
    price2: "94.27",
    title1: "Petrol",
    title2: "Diesel",
    title3: "Mumbai Maharastra.",
    color: Colors.deepPurple,
  ),
  Slide(
    imageUrl: "Today's Gas price",
    price1: '67.90',
    price2: "1,052.50",
    title1: "CNG",
    title2: "LPG",
    title3: "Mumbai Maharastra.",
    color: Colors.indigo,
  ),
];

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

final gridItemList = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Bank',
    price2: 'Balance',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'IFSC',
    price2: 'Code',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Bank',
    price2: 'Holiday',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'USSD',
    price2: 'Banking',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Net',
    price2: 'Banking',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Near By',
    price2: 'Place',
  ),
];
final gridItemList1 = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Mutual',
    price2: 'Funds',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Popular',
    price2: 'Funds',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Explore',
    price2: 'Funds',
  ),
];
final gridItemList2 = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Personal',
    price2: 'Loans',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Home ',
    price2: 'Loans',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Car',
    price2: 'Loans',
  ),
];

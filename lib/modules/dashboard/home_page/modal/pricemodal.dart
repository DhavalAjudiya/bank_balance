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
  final int id;

  GridItem({
    required this.imageUrl,
    required this.price1,
    required this.price2,
    required this.id,
  });
}

final gridItemList = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Bank',
    price2: 'Balance',
    id: 0,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'IFSC',
    price2: 'Code',
    id: 1,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Bank',
    price2: 'Holiday',
    id: 2,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'USSD',
    price2: 'Banking',
    id: 3,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Net',
    price2: 'Banking',
    id: 4,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Near By',
    price2: 'Place',
    id: 5,
  ),
];
final gridItemList1 = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Mutual',
    price2: 'Funds',
    id: 0,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Popular',
    price2: 'Funds',
    id: 1,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Explore',
    price2: 'Funds',
    id: 2,
  ),
];
final gridItemList2 = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Personal',
    price2: 'Loans',
    id: 0,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Home ',
    price2: 'Loans',
    id: 1,
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Car',
    price2: 'Loans',
    id: 2,
  ),
];

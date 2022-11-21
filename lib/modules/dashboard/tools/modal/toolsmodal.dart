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

final toolList = [
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'SIP',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'EMI',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Loan',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'GST',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'FD',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Brokerage',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'SWP',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'RD',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'PPF',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'EPF',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Inflation',
    price2: 'Calculation',
  ),
  GridItem(
    imageUrl: AssetsPath.home,
    price1: 'Gratutiy',
    price2: 'Calculation',
  ),
];

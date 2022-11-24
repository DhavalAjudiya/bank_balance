import 'package:flutter/material.dart';

class StringsUtils {
  StringsUtils._();

  static ValueNotifier<int> bottomIndex = ValueNotifier(0);

  ///Validator
  static const String emailRegExp =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String plzEnterEmail = 'Please enter email';
  static const String enterValidEmail = 'Please enter valid email';
  static const String emptyQuote = '';
  static const String plzEnterPWD = 'Please enter Password';
  static const String pWDRegExp =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  static const String pWDMustBeUpperLower =
      'Password must be Uppercase,Lowercase,digit and specialCharacters';

  static const String allBanK = 'All Bank Balance';
  static const String banking = 'Banking';
  static const String mutual = 'Mutual Funds';
  static const String loan = 'Loans';
  static const String saving = 'Saving Schemes';
  static const String tools = 'Tools';
  static const String selectYourBank = 'Select Your Bank';
  static const String bankName = 'Bank Name';
  static const String ifsc = 'IFSC Code';
  static const String address = 'Address';
  static const String district = 'District';
  static const String branch = 'Branch';
  static const String branchCode = 'Branch Code';
  static const String micrCode = 'MICR Code';
  static const String disclaimer = 'Disclaimer';
  static const String selectBranch = 'Select Branch';
  static const String selectDistrict = 'Select District';
  static const String selectState = 'Select State';
  static const String bankBalance = 'Bank Balance';
  static const String miniStatement = 'Mini Statement';
  static const String care = 'Customer care Number';
  static const String balanceInquiryHeader =
      '*Please Dial from Registered Mobile Number in Bank';
  static const String internetBanking = 'Internet Banking';
  static const String ussd = 'USSD Banking';
  static const String allUssd = 'All Bank USSD Code';
  static const String setUpUssd = 'Setup USSD';
  static const String setLanguage = 'Setup Language & Link Bank';
  static const String setLsubText =
      'if Using First Time Dial *99# to Setup your Language & Bank Account';
  static const String welcome = 'WelCome to *99#';
  static const String enterBank = "Enter Your Bank's";
  static const String a = "a) Bank Name OR";
  static const String b = "b) First 4 letter of IFSC OR";
  static const String c = "c) 3 letter Short Name OR";
  static const String d = "d) 2 dight numeric code";
  static const String hdf = "HDF";
  static const String cancel = "CANCEL";
  static const String send = "SEND";
  static const String codeList = "Bank's Short Name & Numaric Codes List";
  static const String note =
      "Note: Your Mobile No Must be registered with bank";
  static const String dial = "DIAL *99#";
}

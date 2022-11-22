import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// class BalanceInquiry {
//   String? bankname;
//
//   Details? details;
//
//   BalanceInquiry({
//     this.bankname,
//     this.details,
//   }) {}
//
//   BalanceInquiry.fromDocumentSnapshot(
//     DocumentSnapshot documentSnapshot,
//   ) {
//     Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
//     bankname = data["bankname"] ?? '';
//
//     details = data['homesAddress'] != null ? Details.fromJson(data['homesAddress']) : null;
//   }
//
//   BalanceInquiry.fromJson(Map<String, dynamic> json) {
//     bankname = json["bankname"] ?? '';
//
//     details = json['homesAddress'] != null ? Details.fromJson(json['homesAddress']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['bankname'] = bankname;
//
//     if (details != null) {
//       data['homesAddress'] = details!.toJson();
//     }
//
//     return data;
//   }
// }

// class Details {
//   String? balance;
//   String? mini;
//   String? care;
//
//   Details({
//     this.balance,
//     this.mini,
//     this.care,
//   });
//
//   Details.fromDocumentSnapshot(
//     DocumentSnapshot documentSnapshot,
//   ) {
//     Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
//     balance = data['balance'] ?? '';
//     mini = data['mini'] ?? '';
//     care = data['care'] ?? '';
//   }
//
//   Details.fromJson(Map<String, dynamic> json) {
//     balance = json['balance'] ?? '';
//     mini = json['mini'] ?? '';
//     care = json['care'] ?? '';
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['balance'] = balance;
//     data['mini'] = mini;
//     data['care'] = care;
//
//     return data;
//   }
// }

import 'dart:convert';

BalanceInquiry balanceInquiryFromJson(String str) => BalanceInquiry.fromJson(json.decode(str));

String balanceInquiryToJson(BalanceInquiry data) => json.encode(data.toJson());

class BalanceInquiry {
  BalanceInquiry({
    this.details,
    this.bankname,
  });

  List<String>? details;
  String? bankname;

  factory BalanceInquiry.fromJson(Map<String, dynamic> json) => BalanceInquiry(
        details: json["details"] == null ? null : List<String>.from(json["details"].map((x) => x)),
        bankname: json["bankname"] == null ? null : json["bankname"],
      );

  Map<String, dynamic> toJson() => {
        "details": details == null ? null : List<dynamic>.from(details!.map((x) => x)),
        "bankname": bankname == null ? null : bankname,
      };
}

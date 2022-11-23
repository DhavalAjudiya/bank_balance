import 'dart:convert';

BalanceInquiry balanceInquiryFromJson(String str) =>
    BalanceInquiry.fromJson(json.decode(str));

String balanceInquiryToJson(BalanceInquiry data) => json.encode(data.toJson());

class BalanceInquiry {
  BalanceInquiry({
    this.details,
    this.bankname,
  });

  List<String>? details;
  String? bankname;

  factory BalanceInquiry.fromJson(Map<String, dynamic> json) => BalanceInquiry(
        details: json["details"] == null
            ? null
            : List<String>.from(json["details"].map((x) => x)),
        bankname: json["bankname"] == null ? null : json["bankname"],
      );

  Map<String, dynamic> toJson() => {
        "details":
            details == null ? null : List<dynamic>.from(details!.map((x) => x)),
        "bankname": bankname == null ? null : bankname,
      };
}

class UssdModal {
  final String title;
  final String number;

  UssdModal({
    required this.title,
    required this.number,
  });
}

class AllBankUssdModal {
  final String title;
  final String number;

  AllBankUssdModal({
    required this.title,
    required this.number,
  });
}

final ussdModalList = [
  UssdModal(
    title: "My Profile",
    number: "*99*4#",
  ),
  UssdModal(
    title: "Request Money",
    number: "*99*2#",
  ),
  UssdModal(
    title: "Pending Request",
    number: "*99*5#",
  ),
  UssdModal(
    title: "Transaction",
    number: "*99*6#",
  ),
  UssdModal(
    title: "Check Bank Balance",
    number: "*99*3#",
  ),
  UssdModal(
    title: "Send Money",
    number: "*99*1#",
  ),
  UssdModal(
    title: "All Bank USSD Code",
    number: "0",
  ),
  UssdModal(
    title: "UPI Pin",
    number: "*99*7#",
  ),
  UssdModal(
    title: "First Time Setup Dial *99#",
    number: "1",
  ),
];

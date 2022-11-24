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
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String number;

  AllBankUssdModal({
    required this.title,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
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
final allBankUSSDList = [
  AllBankUssdModal(
    number: "*99*87#",
    title: "Abhyudaya Co-op.Bank",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "ACB",
    title4: "ABHY",
  ),
  AllBankUssdModal(
    number: "*99*54#",
    title: "Allahabad Bank",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "ALB",
    title4: "ALLA",
  ),
  AllBankUssdModal(
    number: "*99*59#",
    title: "Andhra Bank",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "ACB",
    title4: "ABHY",
  ),
  AllBankUssdModal(
    number: "*99*85#",
    title: "Apna Sahakari Bank",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "APN",
    title4: "asbl",
  ),
  AllBankUssdModal(
    number: "*99*45#",
    title: "Axis Bank",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "axb",
    title4: "utib",
  ),
  AllBankUssdModal(
    number: "*99*48#",
    title: "Bank of Baroda",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "bob",
    title4: "barb",
  ),
  AllBankUssdModal(
    number: "*99*47#",
    title: "Bank og India",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "boi",
    title4: "bkid",
  ),
  AllBankUssdModal(
    number: "*99*61#",
    title: "Bank of Maharastra",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "bom",
    title4: "mahb",
  ),
  AllBankUssdModal(
    number: "*99*86#",
    title: "Bharatiya Mahila Bank",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "bmb",
    title4: "mbmbl",
  ),
  AllBankUssdModal(
    number: "*99*46#",
    title: "Canara Bank",
    title1: "Short Name:-",
    title2: "4 Letter IFSC:-",
    title3: "cnb",
    title4: "cnrb",
  ),
];

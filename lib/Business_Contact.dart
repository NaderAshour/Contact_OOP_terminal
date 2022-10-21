import 'package:beginerproject/Contact.dart';

class Business extends Contact{
  String ? gmail;
  String ? fax;
  int ? bankaccountnum;
  Business({required String? id,required String? name,required String? location,required int? phonenumber,
    required int? day,required int? month,required int? year,required int? secondphonenum,
  required  this.gmail,required this.fax,required this.bankaccountnum}):super(name: name,id: id,location: location,phonenumber: phonenumber,
      day:day,month: month,year: year,secondphonenum: secondphonenum);
  static List<Business>businesslist=<Business>[];
  @override
  String toString() {
    return super.toString() +
        '{BankAcountNum:$bankaccountnum ,Fax:$fax ,GmailAccount:$gmail}';
  }
  }
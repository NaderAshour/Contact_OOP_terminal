import 'package:beginerproject/Contact.dart';

class FavouriteContacts extends Contact{
  late int speednum ;
  FavouriteContacts({required String? id, required String? name,required String? location,required  int? phonenumber,
    required  int? day,required int? month,required int? year,required int? secondphonenum,required this.speednum}): super(
      id: id, name: name, location: location, phonenumber: phonenumber, day: day, month: month, year: year, secondphonenum: secondphonenum
  );
  static List<FavouriteContacts>favouritelist=<FavouriteContacts>[];
  @override
  String toString() {
    return super.toString()+'{Emergancey Number:$speednum}';
  }
}
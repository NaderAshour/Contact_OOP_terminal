
class Contact{
  String?name;
  String ?id;
  String? location;
  int ?phonenumber;
  int ?day;
  int ?month;
  int ?year;
  int? secondphonenum=0;

  Contact({required this.id, required this.name,required this.location ,required this. phonenumber ,
    required this.day ,required this.month ,required this.year  ,required this .secondphonenum});

  static List<Contact>addcontacttolist=<Contact>[];
  @override
  String toString() {
    return 'The contact:$id {Name:$name, location:$location ,Phone Number: $phonenumber,date of adding: $day-$month-$year,'
        'Second phone:$secondphonenum}''\n';
  }
}
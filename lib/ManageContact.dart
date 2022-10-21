import 'package:beginerproject/Business_Contact.dart';
import 'package:beginerproject/Contact.dart';
import 'dart:io';
import 'package:beginerproject/Favourite_Contact.dart';
class ManageContact {
  WelcomeAndChoose() {
    print(
        "                                       WELCOME IN OUR SYSTEM                             ");
    print(
        '                1-Add contact                                                5-Search ');
    print(
        '                2-Edit contact                                               6-View Latest contacts ');
    print(
        '                3-Delete contact                                             7- exit               ');
    print(
        '                4-View contact                                                                            ');


    print(
        '   ________________________________________________________________________________________________________________________');}
  choes1(){
    addnewcontact();
    print('do you need to add new contact ? (Y/N)');
    String? ans=stdin.readLineSync();
    while(ans=='Y'||ans=='y'){
      addnewcontact();
      print('do you need to add new contact ? (Y/N)');
      String ?ans=stdin.readLineSync();
      if(ans=='N'||ans=='n'){
        print('                                            thank you');
        break;
      }
    }
  }
  chose2(){
    Edit();
    print('DO you need to edit again ? (Y/N)');
    String? ans=stdin.readLineSync();
    while(ans=='Y'||ans=='y'){
      Edit();
      print('Do you need to edit again ? (Y/N)');
      String? ans=stdin.readLineSync();
      if(ans=='N'||ans=='n'){
        print('                                            thank you');
        break;
      }
    }
  }
  chose3(){
    delete();
    print('DO you need to delete again ? (Y/N)');
    String? ans=stdin.readLineSync();
    while(ans=='Y'||ans=='y'){
      delete();
      print('Do you need to edit again ? (Y/N)');
      String ?ans=stdin.readLineSync();
      if(ans=='N'||ans=='n'){
        print('                                            thank you');
        break;
      }
    }
  }
  chose4(){
    view();
  }
  chose5(){
    Search();
    print('DO you need to search another contact ? (Y/N)');
    String ?ans=stdin.readLineSync();
    while(ans=='Y'||ans=='y'){
      Search();
      print('Do you need to search another contact ? (Y/N)');
      String? ans=stdin.readLineSync();
      if(ans=='N'||ans=='n'){
        print('                                            thank you');
        break;
      }
    }
  }
  chose6(){
    LatestContacts();
  }
  chose7(){
    print('                                               you are welcome');
  }
  addnewcontact(){
    print('enter contact id:');
    String? id=stdin.readLineSync();
    print('enter contact Name:');
    String? name=stdin.readLineSync();
    print('enter person location:');
    String? location=stdin.readLineSync();
    print('enter Phone Number:');
     int phonenumber=int.parse(stdin.readLineSync().toString());
    print('enter date of adding contact');
    print('day');
    int day=int.parse(stdin.readLineSync().toString());
    print('month');  int month=int.parse(stdin.readLineSync().toString());   print('year');    int year=int.parse(stdin.readLineSync().toString());
    print('enter the second Phone Number:');
    int secondphonenum=int.parse(stdin.readLineSync().toString());
    print('Add to Favourite ?: y/n');
    String? ans =stdin.readLineSync();
    if (ans=='y' || ans=='Y'){
      print('enter the Emergancey Number:');
        int speednum=int.parse(stdin.readLineSync().toString());
      FavouriteContacts f =FavouriteContacts(id: id,name: name,location: location,phonenumber: phonenumber,day: day,month: month,year: year,secondphonenum: secondphonenum,speednum: speednum);
         FavouriteContacts.favouritelist.add(f);
    }
    else print('                  ok');
    print('Add to Business ?: y/n');
    String? answer =stdin.readLineSync();
    if (answer=='y' || answer=='Y'){
      print('enter your Gmail:');
      String? gmail=stdin.readLineSync();
      print('enter your Fax:');
      String? fax=stdin.readLineSync();
      print('enter you BankAccountNumber:');
      int bankaccountnum=int.parse(stdin.readLineSync().toString());
       Business b =Business(id: id, name: name, location: location, phonenumber: phonenumber, day: day, month: month, year: year, secondphonenum: secondphonenum, gmail: gmail, fax: fax, bankaccountnum: bankaccountnum);
      Business.businesslist.add(b);
    }
    else print('                  ok');
    Contact x=Contact(id: id,name: name,location: location,phonenumber: phonenumber,day: day,month:month,year: year,secondphonenum: secondphonenum);
    Contact.addcontacttolist.add(x);
    return Contact.addcontacttolist;
  }
  Edit(){
    print('to edit phonenum enter 1 :');
    print('to edit location enter 2 :');


    int x=int.parse(stdin.readLineSync().toString());
    if(x==1)
      Edit_Phonenum();
    if(x==2)
      Edit_location();
  }
  Edit_Phonenum() {
    print('enter the  id of contact you need to edit');
    String? id = stdin.readLineSync();

    for (int i = 0; i < Contact.addcontacttolist.length; i++) {
      if (Contact.addcontacttolist[i].id == id) {
        print('enter new phone number');
        int pn =int.parse(stdin.readLineSync().toString());
        Contact.addcontacttolist[i].phonenumber = pn;
        print(Contact.addcontacttolist);
      }
    }

  }
  Edit_location() {
    print('enter the  id of contact you need to edit');
    String ?id = stdin.readLineSync();

    for (int i = 0; i < Contact.addcontacttolist.length; i++) {
      if (Contact.addcontacttolist[i].id == id) {
        print('enter new location');
        String? pl = stdin.readLineSync();
        Contact.addcontacttolist[i].location = pl;
      }
    }
    print(Contact.addcontacttolist);
  }
  view() {
    print('  to view all contacts: enter 1 ');
    print('  to view favourite contacts: enter 2 ');
    print('  to view Business contacts: enter 3 ');
    int v=int.parse(stdin.readLineSync().toString());
    if(v==1){
      print(Contact.addcontacttolist);
    }
    if(v==2){
      print(FavouriteContacts.favouritelist);
    }
    if(v==3){
      print(Business.businesslist);
    }
  }
  delete(){
    print('enter the id of contact you need to delete :');
    String ?m=stdin.readLineSync();
    for(int i=0 ; i<Contact.addcontacttolist.length ; i++){
      if(Contact.addcontacttolist[i].id==m){
        Contact.addcontacttolist.removeAt(i);
      }
    }
    print('delete Succesful');
  }
  Search(){
    print('enter id of contact you need');
    int p=int.parse(stdin.readLineSync().toString());
    for(int i=0 ; i<Contact.addcontacttolist.length; i++){
      if(Contact.addcontacttolist[i].id==p.toString()){
        print(Contact.addcontacttolist[i]);
      }
    }
  }
  LatestContacts() {
    print('Latest (10) Contacts :');
    if(Contact.addcontacttolist.length>10){
      for (int i = Contact.addcontacttolist.length-1; i >= Contact.addcontacttolist.length - 10; i--) {
        print(Contact.addcontacttolist[i]);
      }
    }else{
      print(Contact.addcontacttolist);
    }
  }

}



















/*chose7(){

    addfavcontact();
  }*/

/* addfavcontact(){

    print('enter id of contact to add to favourite');
    String? d = stdin.readLineSync();
    for (int i = 0; i < Contact.addcontacttolist.length; i++) {
      if (Contact.addcontacttolist[i].id == d) {

        print('enter the Emergancey Number:');
        int speednum=int.parse(stdin.readLineSync().toString());
        FavouriteContacts f =FavouriteContacts(id: id,name: name,location: location,phonenumber: phonenumber,day: day,month: month,year: year,secondphonenum: secondphonenum,speednum: speednum);
        FavouriteContacts.favouritelist.add(f);
       // FavouriteContacts.favouritelist.toSet().add(f);

      }
      else {print('rong id');}
    }
print(FavouriteContacts.favouritelist);
  }
*/
import 'package:xlo/models/adress.dart';

class Ad {
  List<dynamic> images;
  String title;
  String description;
  Address adress;
  num price;
  bool hidePhone;

  @override
  String toString(){
    return '$images, $title, $description, $adress, $price, $hidePhone';
  }
}
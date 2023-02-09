import 'package:get/get.dart';

class FavouriteController extends GetxController {


  RxList favourite = [].obs ;

  RxList<String> fruitList = ['Apple' , 'Orange' , 'Grapes' , 'Mango'].obs ;

  addToFavourite(String value){
    favourite.add(value);
  }
  removeFromFavourite(String value){
    favourite.remove(value);
  }
}
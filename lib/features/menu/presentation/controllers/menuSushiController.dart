
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../domain/repositories/menuRepository.dart';

class MenuSushiController extends GetxController{
  final MenuRepository menuRepository;

  MenuSushiController(this.menuRepository);

  Stream<QuerySnapshot> streamDishes(){
    return menuRepository.getDishes();
  }

}
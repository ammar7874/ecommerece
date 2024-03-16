import 'package:get/get.dart';

class AdminHomeController extends GetxController {
  static AdminHomeController get to => Get.find();

  int pageindex = 0;

  void changepageIndex(int i) {
    pageindex = i;
    update();
  }
}

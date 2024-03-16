import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerece/models/user_models/user_signup_model.dart';
import 'package:ecommerece/utils/flushbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserMainController extends GetxController {
  static UserMainController get to => Get.find();

  void userSignUpMethode(UserModel model, BuildContext context) {
    FirebaseFirestore.instance
        .collection("Users")
        .doc(model.userId)
        .set(model.toMap());
    MyFlushBar.showSimpleFlushBar(
        'Inserted Successfully', context, Colors.green, Colors.white);
  }
}

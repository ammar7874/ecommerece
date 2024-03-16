import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerece/models/admin_models/shop_model.dart';
import 'package:ecommerece/utils/flushbar.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AdminMainController extends GetxController {
  static AdminMainController get to => Get.find();
  final imagepicker = ImagePicker();
  XFile? shopImage;
  String? imageUrl;

  /// Get from gallery
  Future<XFile> getFromGallery(BuildContext context) async {
    final XFile? pickedFile =
        await imagepicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      shopImage = pickedFile;
    } else {
      // ignore: use_build_context_synchronously
      MyFlushBar.showSimpleFlushBar(
          "select image", context, Colors.red, Colors.white);
    }
    update();

    return shopImage!;
  }

// post image on firebase
  Future postImage(XFile? imagefile) async {
    String urls;
    Reference ref =
        FirebaseStorage.instance.ref().child('/image').child(imagefile!.name);
    await ref.putData(
        await imagefile.readAsBytes(),
        SettableMetadata(
          contentType: "image/jpeg",
        ));
    urls = await ref.getDownloadURL();
    return urls;
  }

  uploadImage(XFile image) async {
    await postImage(image).then((value) {
      imageUrl = value;
    });

    update();
  }

  clearData() {
    imageUrl = null;
    update();
  }

  addShop(BuildContext context, String name, String email, String address,
      String passs, String location, String storename) async {
    var uuid = Uuid();
    String id = uuid.v4();

    ShopModel model = ShopModel(
        gmail: email,
        shopid: id,
        image: imageUrl,
        city: location,
        name: name,
        passsword: passs,
        storename: storename,
        address: address,
        status: 0);

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    await firebaseFirestore
        .collection("Stores")
        .doc(model.shopid)
        .set(model.toMap());
    // ignore: use_build_context_synchronously
    MyFlushBar.showSimpleFlushBar(
        'Inserted Successfully', context, Colors.green, Colors.white);

    clearData();
  }
}

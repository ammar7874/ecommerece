import 'dart:io';
import 'package:ecommerece/models/shop_models/product_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('products');

  Future<void> addProduct(Product product, List<File> imageFiles) async {
    List<ProductImage> images = [];

    // Upload images to Firebase Storage
    for (var imageFile in imageFiles) {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference ref =
          FirebaseStorage.instance.ref().child('product_images/$fileName');
      UploadTask uploadTask = ref.putFile(imageFile);

      TaskSnapshot taskSnapshot = await uploadTask;
      String imageUrl = await taskSnapshot.ref.getDownloadURL();
      images.add(ProductImage(imageUrl: imageUrl));
    }

    // Add product data with images to Firestore
    await productsCollection.add(product.toJson());
  }
}

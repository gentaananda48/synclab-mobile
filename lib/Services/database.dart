import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addGalleryInfo(
      Map<String, dynamic> galleryInfoMap, String gallery_id) async {
    FirebaseFirestore.instance
        .collection("gallery")
        .doc(gallery_id)
        .set(galleryInfoMap);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropboxiot_flutter/helpers/constants.dart';

import '../models/gate.dart';
/*
class UserServices {
  String adminsCollection = "gates";
  String usersCollection = "gatename";

  void createAdmin({
    String? gatename,
    String? borrow,
    String? derivered,
  }) {
    FirebaseFirestore.instance.collection(adminsCollection).doc(gatename).set({
      "gatename": gatename,
      "id": borrow,
      "email": derivered,
    });
  }

  void updateUserData(Map<String, dynamic> values) {
    FirebaseFirestore.instance
        .collection(adminsCollection)
        .doc(values['id'])
        .update(values);
  }

  Future<GateModel> getAdminById(String id) => FirebaseFirestore.instance
          .collection(adminsCollection)
          .doc(id)
          .get()
          .then((doc) {
        return GateModel.fromSnapshot(doc);
      });

  Future<List<GateModel>> getAllUsers() async => FirebaseFirestore.instance
          .collection(usersCollection)
          .get()
          .then((result) {
        List<GateModel> gatenameDB = [];
        for (DocumentSnapshot user in result.docs) {
          gatenameDB.add(GateModel.fromSnapshot(user));
        }
        return gatenameDB;
      });
}
*/
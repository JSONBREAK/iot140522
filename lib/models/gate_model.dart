import 'package:cloud_firestore/cloud_firestore.dart';

class GateModel {
  static const GATENAME = "gatename";
  static const BRROW = "borrow";
  static const DERIVERED = "derivered";
  static const ICON = "icon";
  String? gatename;
  String? borrow;
  String? derivered;
  String? icon;

//  getters
  String? get GateName => gatename;
  String? get Borrow => borrow;
  String? get Derivered => derivered;

  GateModel.fromSnapshot(DocumentSnapshot snapshot) {
    gatename = snapshot[GATENAME];
    borrow = snapshot[BRROW];
    derivered = snapshot[DERIVERED];
    icon = snapshot[ICON];
  }
}

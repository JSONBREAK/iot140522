// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print, prefer_const_constructors

/*
import 'dart:html';

import 'package:dropboxiot_flutter/responsive.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/gate_model.dart';

class ShowListData extends StatefulWidget {
  const ShowListData({Key? key}) : super(key: key);

  @override
  State<ShowListData> createState() => _ShowListDataState();
}

class _ShowListDataState extends State<ShowListData> {
  //Field
  //Method

  @override
  void initState() {
    super.initState();
    readAllData();
  }

  Future<void> readAllData() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference collectionReference = firestore.collection('gates');
    await collectionReference.snapshots().listen((Response) {
      List<DocumentSnapshot> snapshots = Response.docs;
      for (var snapshot in snapshots) {
        print(snapshot);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('test'),
    );
  }
}
*/
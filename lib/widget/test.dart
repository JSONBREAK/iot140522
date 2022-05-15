// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../helpers/constants.dart';
import '../models/gate_model.dart';

class TestProduct extends StatefulWidget {
  const TestProduct({Key? key}) : super(key: key);

  @override
  State<TestProduct> createState() => _TestProductState();
}

class _TestProductState extends State<TestProduct> {
  @override
  final Future<FirebaseApp> firebase = Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyDAWKdL89m6OHsauulYs4Ly3LXZUbKLYVg',
      appId: "1:345086861007:android:44139cdf225416fc2e21ba",
      messagingSenderId: "surachokk59@nu.ac.th",
      projectId: "dropbox-iot-firebase",
    ),
  );
  List<GateModel> gateModels = [];
  Future<List<GateModel>> getAllGate() async =>
      firebaseFiretore.collection('gatename').get().then((result) {
        for (DocumentSnapshot gate in result.docs) {
          GateModel gateModels = GateModel.fromSnapshot(gate);
          if (kDebugMode) {
            print(gateModels);
          }
        }
        return gateModels;
      });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              child: ListView.builder(
                itemCount: gateModels.length,
                itemBuilder: (BuildContext buildContext, int index) {
                  return Text('data');
                },
              ),
            );
          }

          return Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircularProgressIndicator()]),
          );
        });
  }
}

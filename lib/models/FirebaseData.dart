// ignore_for_file: file_names, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:dropboxiot_flutter/models/gate_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';

import '../helpers/constants.dart';
/*
class FirebaseData extends StatefulWidget {
  FirebaseData({Key? key}) : super(key: key);

  State<FirebaseData> createState() => _FirebaseDataState();
}

class _FirebaseDataState extends State<FirebaseData> {
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
          GateModel gateModel = GateModel.fromSnapshot(gate);

          setState(() {
            gateModel.add(gateModel);
          });
        }
        return gateModels;
      });

  //CollectionReference _gateColloction =
  //FirebaseFirestore.instance.collection('gates');

  @override
  Widget build(BuildContext context) {
    return Builder(
      future: iniFuturetialization,
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
          return Container(child: Text('555'));
        }
        return Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()]),
        );
      },
    );
  }
}
/*
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
          return Scaffold(
            appBar: AppBar(
              title: TextField(),
            ),
            body: Center(
              child: StreamBuilder(
                stream: _gateColloction.snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  return ListView(
                    children: snapshot.data!.docs.map((Data) {
                      return Center(
                        child: ListTile(
                          title: Text(GateModel.ICON),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          );
        }
        return Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()]),
        );
      },
    );
  }
}
*/*/    

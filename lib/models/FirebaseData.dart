// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../helpers/constants.dart';

class FirebaseData extends StatefulWidget {
  FirebaseData({Key? key}) : super(key: key);

  @override
  State<FirebaseData> createState() => _FirebaseDataState();
}

class _FirebaseDataState extends State<FirebaseData> {
  final Future<FirebaseApp> firebase = Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyDAWKdL89m6OHsauulYs4Ly3LXZUbKLYVg',
      appId: "1:345086861007:android:44139cdf225416fc2e21ba",
      messagingSenderId: "surachokk59@nu.ac.th",
      projectId: "dropbox-iot-firebase",
    ),
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: TextField(),
        ),
        body: Center(
          child: StreamBuilder(
            stream: firebaseFirestore.collection('gates').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return ListView(
                children: snapshot.data!.docs.map((testData) {
                  return Center(
                    child: ListTile(
                      title: Text(testData['gateName']),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}

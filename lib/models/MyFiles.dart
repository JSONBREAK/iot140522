import 'package:flutter/material.dart';

import '../constants.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "XXXXXXXX",
    numOfFiles: 88888,
    svgSrc: "",
    totalStorage: "XXXX",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "XXXXXXXX",
    numOfFiles: 88888,
    svgSrc: "",
    totalStorage: "XXXX",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "XXXXXXXX",
    numOfFiles: 88888,
    svgSrc: "",
    totalStorage: "XXXX",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "XXXXXXXX",
    numOfFiles: 88888,
    svgSrc: "",
    totalStorage: "XXXX",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];

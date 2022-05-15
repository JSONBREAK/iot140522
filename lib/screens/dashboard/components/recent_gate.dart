// ignore_for_file: prefer_const_constructors

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/RecentGate.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gates details",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              // ignore: prefer_const_literals_to_create_immutables
              columns: [
                DataColumn(
                  label: Text("Recent Gates"),
                ),
                DataColumn(
                  label: Text("Borrow"),
                ),
                DataColumn(
                  label: Text("Derivered"),
                ),
                DataColumn(
                  label: Text("Remain"),
                ),
              ],
              rows: List.generate(
                demoRecentGate.length,
                (index) => recentFileDataRow(demoRecentGate[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentGate fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Image.asset(
              fileInfo.Ricon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.Rgatename!),
            ),
          ],
        ),
      ),
      DataCell(
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.Rborrow!),
            )
          ],
        ),
      ),
      DataCell(
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(fileInfo.Rderivered!),
            )
          ],
        ),
      ),
      DataCell(
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.Rremain!),
            )
          ],
        ),
      ),
    ],
  );
}

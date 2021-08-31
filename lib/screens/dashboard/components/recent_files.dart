import 'package:admin/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyCobots extends StatelessWidget {
  const MyCobots({
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
            "My Cobots",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Cobot Name"),
                ),
                DataColumn(
                  label: Text("Temperature"),
                ),
                DataColumn(
                  label: Text("Status"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Icon(Icons.settings),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Row(
        children: [
          Text(fileInfo.temperature!),
          if ((int.tryParse(fileInfo.temperature ?? '0') ?? 0) > 40) ...[
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(10)),
              height: 10,
              width: 10,
            ),
          ]
        ],
      )),
      DataCell(
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:
                fileInfo.status == "On" ? Colors.greenAccent : Colors.redAccent,
          ),
          child: Text(fileInfo.status!),
        ),
      )
    ],
  );
}

import 'package:admin/models/cobotDetailInfo.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CobotDetails extends StatelessWidget {
  const CobotDetails({
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, i) =>
                  cobotDetailListElement(demoCobotInfo[i]),
              itemCount: demoCobotInfo.length,
              separatorBuilder: (context, i) => Divider(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cobotDetailListElement(CobotInfo cobotInfo) {
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Text(
          "${cobotInfo.title ?? "--"} :",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        width: defaultPadding,
      ),
      Expanded(
        flex: 2,
        child: Text(cobotInfo.value ?? "--"),
      )
    ],
  );
}

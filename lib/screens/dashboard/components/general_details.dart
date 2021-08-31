import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class GeneralDetails extends StatelessWidget {
  const GeneralDetails({
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
            "Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          CobotInfoCard(
            color: Colors.green,
            title: "Working Cobots",
            number: "3",
          ),
          CobotInfoCard(
            color: Colors.yellow,
            title: "Working Cobots (HT)",
            number: "2",
          ),
          CobotInfoCard(
            color: Colors.red,
            title: "Not-working Cobots",
            number: "2",
          ),
        ],
      ),
    );
  }
}

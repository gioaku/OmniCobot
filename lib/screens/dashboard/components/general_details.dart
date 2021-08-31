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
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Working Cobots",
            number: "3",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Working Cobots (HT)",
            number: "2",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Not-working Cobots",
            number: "2",
          ),
        ],
      ),
    );
  }
}

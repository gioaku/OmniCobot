import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/cobot_details.dart';
import 'package:admin/screens/dashboard/components/cobot_image.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

class CobotDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(title: "Cobot Details", home: false),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      CobotDetails(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) CobotImage(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: CobotImage(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

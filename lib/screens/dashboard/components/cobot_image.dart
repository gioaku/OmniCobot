import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class CobotImage extends StatelessWidget {
  const CobotImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('3D View'),
            content: InkWell(
              child: Row(
                children: [
                  Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/FRONT.png")),
                      Expanded(child: Image.asset("assets/images/TOP.png"))
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/RIGHT.png")),
                      Expanded(child: Image.asset("assets/images/LEFT.png"))
                    ],
                  ),
                ],
              ),
              onTap: () => Navigator.pop(context),
            ),
          );
        },
      ),
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Image.asset(
          "assets/images/VISUALE LIBERA.png",
        ),
      ),
    );
  }
}

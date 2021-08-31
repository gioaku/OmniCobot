import 'package:admin/main.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CobotImage extends StatelessWidget {
  const CobotImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('3D Live View'),
                content: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Image.asset("assets/images/FRONT.png")),
                          Text("Front"),
                          Expanded(child: Image.asset("assets/images/TOP.png")),
                          Text("Top"),
                          if (Responsive.isMobile(context)) ...[
                            Expanded(
                                child: Image.asset("assets/images/RIGHT.png")),
                            Text("Right"),
                            Expanded(
                                child: Image.asset("assets/images/LEFT.png")),
                            Text("Left"),
                          ]
                        ],
                      ),
                      if (Responsive.isDesktop(context)) ...[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Image.asset("assets/images/RIGHT.png")),
                            Text("Right"),
                            Expanded(
                                child: Image.asset("assets/images/LEFT.png")),
                            Text("Left"),
                          ],
                        ),
                      ]
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
        ),
        Text(
          "3D Live View",
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}

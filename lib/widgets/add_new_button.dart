import 'package:flutter/material.dart';

import '../helpers/colors.dart';
import '../helpers/styles.dart';

class AddNewButton extends StatelessWidget {
  const AddNewButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17.0),
      child: Container(
          height: 167.0,
          width: 50.0,
          decoration: BoxDecoration(
              border:
                  Border.all(width: 2, color: kcWhiteColor.withOpacity(0.10)),
              borderRadius: BorderRadius.circular(9.0),
              gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 1.5,
                colors: [
                  kcWhiteColor.withOpacity(0.28),
                  kcButtonGradientColor,
                ],
              )),
          child: Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                '+ Add New',
                style: semiBold21Style.copyWith(color: kcWhiteColor),
              ),
            ),
          )),
    );
  }
}

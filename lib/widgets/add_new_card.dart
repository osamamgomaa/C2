import 'package:flutter/material.dart';

import '../helpers/colors.dart';
import '../helpers/styles.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17.0),
      child: Container(
        height: 125.0,
        width: 92.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),
            color: kcBlackColor.withOpacity(0.17)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '+',
              style: semiBold14Style.copyWith(color: kcWhiteColor),
            ),
            Text(
              'Add',
              style: semiBold14Style.copyWith(color: kcWhiteColor),
            ),
            Text(
              'New',
              style: semiBold14Style.copyWith(color: kcWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}

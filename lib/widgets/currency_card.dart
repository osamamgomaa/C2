import 'package:flutter/material.dart';

import '../helpers/colors.dart';
import '../helpers/styles.dart';

class CurrencyCard extends StatelessWidget {
  final String currency;
  final String balance;
  final String balance2;
  final String profit;
  final String currencyIcon;

  const CurrencyCard({
    Key? key,
    required this.currency,
    required this.balance,
    required this.balance2,
    required this.profit,
    required this.currencyIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17.0),
      child: Container(
        height: 333.0,
        width: 232.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: kcWhiteColor.withOpacity(0.96)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 22, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currency,
                    style: semiBold14Style.copyWith(color: kcPrimaryColor),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '€ ',
                        style: regular19Style.copyWith(color: kcPrimaryColor),
                        children: [
                          TextSpan(
                            text: balance,
                            style:
                                semiBold21Style.copyWith(color: kcPrimaryColor),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Holdings',
                    style: regular14Style.copyWith(
                        color: kcPrimaryColor.withOpacity(0.2)),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(currencyIcon),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: '  € ',
                            style:
                                regular19Style.copyWith(color: kcPrimaryColor),
                            children: [
                              TextSpan(
                                text: balance2,
                                style: semiBold19Style.copyWith(
                                    color: kcPrimaryColor),
                              )
                            ]),
                      ),
                      RichText(
                        text: TextSpan(
                            text: '+ € ',
                            style: regular19Style.copyWith(color: kcGreenColor),
                            children: [
                              TextSpan(
                                text: profit,
                                style: semiBold19Style.copyWith(
                                    color: kcGreenColor),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/colors.dart';
import '../helpers/assets.dart';
import '../helpers/styles.dart';

class BalanceInfo extends StatelessWidget {
  const BalanceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Text(
            'c2',
            style: semiBold21Style.copyWith(color: kcWhiteColor),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                'Total crypto',
                style: regular14Style.copyWith(
                    color: kcWhiteColor.withOpacity(0.5)),
              ),
              const SizedBox(
                width: 10.0,
              ),
              SvgPicture.asset(exchangeSVG)
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
            text: TextSpan(
                text: '€ ',
                style: regular21Style.copyWith(
                    color: kcWhiteColor.withOpacity(0.5), fontSize: 36.0),
                children: [
                  TextSpan(
                    text: '14.200.122',
                    style: semiBold21Style.copyWith(
                        fontSize: 36.0, color: kcWhiteColor),
                  )
                ]),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'ROI',
            style:
                regular14Style.copyWith(color: kcWhiteColor.withOpacity(0.5)),
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
            text: TextSpan(
                text: '31.39',
                style: semiBold21Style.copyWith(color: kcWhiteColor),
                children: [
                  TextSpan(
                    text: ' %',
                    style: regular21Style.copyWith(
                        color: kcWhiteColor.withOpacity(0.5)),
                  )
                ]),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'ROI last24h €',
            style:
                regular14Style.copyWith(color: kcWhiteColor.withOpacity(0.5)),
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
            text: TextSpan(
                text: '€ ',
                style: regular21Style.copyWith(
                    color: kcWhiteColor.withOpacity(0.5)),
                children: [
                  TextSpan(
                    text: '12.200',
                    style: semiBold21Style.copyWith(color: kcWhiteColor),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

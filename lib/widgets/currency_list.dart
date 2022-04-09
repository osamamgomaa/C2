import 'package:c2/helpers/assets.dart';
import 'package:flutter/material.dart';

import 'add_new_button.dart';
import 'add_new_card.dart';
import 'currency_card.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(19.0, 65.0, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 104.0),
              child: AddNewCard(),
            ),
            CurrencyCard(
              currency: 'Bitcoin',
              balance: '12.200.122',
              balance2: '52.122.34',
              profit: '2.343',
              currencyIcon: bitcoinIcon,
            ),
            CurrencyCard(
              currency: 'Ethereum',
              balance: '2.200.122',
              balance2: '2.120,21',
              profit: '212',
              currencyIcon: ethereumIcon,
            ),
            AddNewButton(),
          ],
        ),
      ),
    );
  }
}

import '../helpers/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/balance_info.dart';
import '../helpers/colors.dart';
import '../widgets/currency_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kcBlackColor,
          elevation: 0,
          child: Icon(Icons.arrow_upward_sharp),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 720.0,
              color: kcBackgroundColor,
              child: Stack(children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BalanceInfo(),
                      CurrencyList(),
                    ],
                  ),
                ),
              ]),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.maxFinite,
                height: 110.0,
                color: kcBottomColor,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.maxFinite,
                height: 110.0,
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                  center: Alignment(-1.0, -1.0),
                  focal: Alignment(1.0, 0),
                  radius: 5.0,
                  colors: [
                    kcBottomGradientColor,
                    kcWhiteColor.withOpacity(0),
                  ],
                )),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: BottomAppBar(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: _buildIcon(
                            IconButton(
                              icon: SvgPicture.asset(homeSVG),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: IconButton(
                            icon: SvgPicture.asset(activitySVG),
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          icon: SvgPicture.asset(profileSVG),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 35.0,
              child: Image.asset(cubeIcon),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIcon(IconButton icon) => Container(
    height: 42.0,
    width: 51.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(9.0),
      gradient: RadialGradient(
        center: Alignment.topLeft,
        focal: Alignment.bottomRight,
        radius: 5.0,
        colors: [
          kcSelectedGradientColor,
          kcSelectedGradientColor,
        ],
      ),
    ),
    child: icon);



/*import 'package:c2/helpers/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/balance_info.dart';
import 'helpers/colors.dart';
import 'widgets/currency_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kcBlackColor,
          elevation: 0,
          child: Icon(Icons.arrow_upward_sharp),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 710.0,
              color: kcPrimaryColor,
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BalanceInfo(),
                    CurrencyList(),
                  ],
                ),
              ]),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.maxFinite,
                height: 120.0,
                color: kcBottomColor,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: BottomAppBar(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: _buildIcon(
                            IconButton(
                              icon: SvgPicture.asset(homeSVG),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: IconButton(
                            icon: SvgPicture.asset(activitySVG),
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          icon: SvgPicture.asset(profileSVG),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50.0,
              child: Image.asset('assets/cube.png'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIcon(IconButton icon) => Container(
    height: 42.0,
    width: 51.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0), color: kcPrimaryColor),
    child: icon);

/*
import 'package:c2/helpers/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/add_new_button.dart';
import 'widgets/add_new_card.dart';
import 'widgets/balance_info.dart';
import 'helpers/colors.dart';
import 'widgets/currency_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kcBlackColor,
          child: Icon(Icons.arrow_upward_sharp),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.print,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Padding(
                padding: EdgeInsets.only(right: 90),
                child: IconButton(
                  icon: Icon(
                    Icons.people,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: double.maxFinite,
                height: 700.0,
                color: kcPrimaryColor,
                child: Stack(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BalanceInfo(),
                      CurrencyList(),
                    ],
                  ),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 125.0,
                  color: kcGreenColor,
                  child: SizedBox(
                    width: 160,
                    height: 25.0,
                    // child: BottomNavigationBar(
                    //   type: BottomNavigationBarType.fixed,
                    //   showUnselectedLabels: false,
                    //   showSelectedLabels: false,
                    //   iconSize: 23.0,
                    //   fixedColor: kcWhiteColor,
                    //   backgroundColor: Colors.transparent,
                    //   currentIndex: 0,
                    //   items: [
                    //     BottomNavigationBarItem(
                    //         icon: SvgPicture.asset(homeSVG), label: "Home"),
                    //     BottomNavigationBarItem(
                    //         icon: SvgPicture.asset(activitySVG),
                    //         label: "Activyty"),
                    //     BottomNavigationBarItem(
                    //         icon: SvgPicture.asset(profileSVG),
                    //         label: "Profile"),
                    //   ],
                    // ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50.0,
              child: Image.asset('assets/cube.png'),
            ),
          ],
        ),
      ),
    );
  }
}
*/
*/
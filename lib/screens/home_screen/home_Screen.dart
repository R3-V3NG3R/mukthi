import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_greetings/flutter_greetings.dart';

import '../../constants/colors.dart';
import './components/promotion_slider_section.dart';
import './components/title_widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PromotionSliderSection(),
              TitleWidget("Recommended"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Container _buildBottomBar() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: kPrimaryColor.withOpacity(0.1),
          blurRadius: 4.0,
          offset: Offset(0, -4),
        ),
      ]),
      child: FlashyTabBar(
        selectedIndex: _currentTab,
        items: [
          FlashyTabBarItem(
            icon: Icon(FeatherIcons.home),
            title: Text("Home"),
            activeColor: kPrimaryColor,
            inactiveColor: kSecondaryColor,
          ),
          FlashyTabBarItem(
            icon: Icon(FeatherIcons.search),
            title: Text("Search"),
            activeColor: kPrimaryColor,
            inactiveColor: kSecondaryColor,
          ),
          FlashyTabBarItem(
            icon: Icon(FeatherIcons.heart),
            title: Text("Favourites"),
            activeColor: kPrimaryColor,
            inactiveColor: kSecondaryColor,
          ),
          FlashyTabBarItem(
            icon: Icon(FeatherIcons.user),
            title: Text("Profile"),
            activeColor: kPrimaryColor,
            inactiveColor: kSecondaryColor,
          ),
        ],
        onItemSelected: (selection) {
          setState(() {
            _currentTab = selection;
          });
        },
        backgroundColor: kBgColor,
        animationCurve: Curves.easeInOut,
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        YonoGreetings.showGreetings() + " !",
        style: TextStyle(
          color: kSecondaryColor,
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevation: 0.0,
      actions: [
        IconButton(
          icon: Icon(FeatherIcons.settings),
          onPressed: () {},
          color: kSecondaryColor,
        )
      ],
    );
  }
}

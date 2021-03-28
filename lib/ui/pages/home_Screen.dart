import 'package:fitnesappui/constants.dart';
import 'package:fitnesappui/size_config.dart';
import 'package:fitnesappui/ui/pages/activity_screen.dart';
import 'package:fitnesappui/ui/pages/dashboard_screen.dart';
import 'package:fitnesappui/ui/pages/metric_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    DashboardScreen(),
    ActivityScreen(),
    MetricScreen(),
    Center(
      child: Text('Profile'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // This is to instantiate the class responsible for Responsive UI
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors. kPrimaryColor ,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: CustomColors.kBackgroundColor,
              size: 30,
            ),
            onPressed: () {}),
        title: SvgPicture.asset(
          'assets/icons/dumbell.svg',
          height: SizeConfig.blockSizeHorizontal * 10,
          color:CustomColors.kBackgroundColor,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.notifications,
              size: 30,
              color: CustomColors.kBackgroundColor,
            ),
          )
        ],
      ),
      body: tabs[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: CustomColors.kPrimaryColor,
          onPressed: () {}),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/apps.svg',
                height: 30,
                color: Colors.grey,
              ),
              title: Container(),
              activeIcon: SvgPicture.asset('assets/icons/apps.svg',
                  height: 30, color: CustomColors.kPrimaryColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/clock.svg',
                height: 30,
                color: Colors.grey,
              ),
              title: Container(),
              activeIcon: SvgPicture.asset('assets/icons/clock.svg',
                  height: 30, color: CustomColors.kPrimaryColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/stats.svg',
                height: 30,
                color: Colors.grey,
              ),
              title: Container(),
              activeIcon: SvgPicture.asset('assets/icons/stats.svg',
                  height: 30, color: CustomColors.kPrimaryColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                height: 30,
                color: Colors.grey,
              ),
              title: Container(),
              activeIcon: SvgPicture.asset('assets/icons/user.svg',
                  height: 30, color: CustomColors.kPrimaryColor),
            ),
          ]),
    );
  }
}

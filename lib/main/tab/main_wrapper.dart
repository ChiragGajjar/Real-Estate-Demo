
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:test_task/main/tab/map/map_screen.dart';
import 'package:test_task/main/tab/profile/profile_screen.dart';
import 'package:test_task/main/tab/wishlist/wishlist_screen.dart';

import '../../common/bottom_nav_btn.dart';
import '../../common/constants.dart';
import '../../common/size_config.dart';
import 'dashboard/dashboard_screen.dart';
import 'message/message_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  MainWrapperState createState() => MainWrapperState();
}

class MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 2;
  final PageController pageController = PageController(initialPage: 2);


  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }


  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(
        milliseconds: 400,
      ),
      curve: Curves.decelerate,
    );
  }


  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Stack(
      children: [
        Positioned.fill(
          child: PageView(
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            controller: pageController,
            children: const [
              MapScreen(),
              MessageScreen(),
              DashboardScreen(),
              WishListScreen(),
              ProfileScreen(),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: bottomNav(),
        ),
      ],
    );
  }

  Widget bottomNav() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(AppSizes.blockSizeHorizontal * 4.5, 0, AppSizes.blockSizeHorizontal * 4.5, 10),
        child: Material(
          borderRadius: BorderRadius.circular(50),
          color: Colors.transparent,
          elevation: 6,
          child: Container(
              height: AppSizes.blockSizeHorizontal * 18,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.decelerate,
                    top: 15,
                    left: animatedPositionedLEftValue(_currentIndex),
                    child: Center(
                      child: Container(
                        height: AppSizes.blockSizeHorizontal * 12,
                        width: AppSizes.blockSizeHorizontal * 12,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: AppSizes.blockSizeHorizontal * 3,
                    right: AppSizes.blockSizeHorizontal * 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BottomNavBTN(
                          onPressed: (val) {
                            animateToPage(val);
                            setState(() {
                              _currentIndex = val;
                            });
                          },
                          icon: IconlyLight.search,
                          currentIndex: _currentIndex,
                          index: 0,
                        ),
                        BottomNavBTN(
                          onPressed: (val) {
                            animateToPage(val);
                            setState(() {
                              _currentIndex = val;
                            });
                          },
                          icon: IconlyLight.message,
                          currentIndex: _currentIndex,
                          index: 1,
                        ),
                        BottomNavBTN(
                          onPressed: (val) {
                            animateToPage(val);
      
                            setState(() {
                              _currentIndex = val;
                            });
                          },
                          icon: IconlyLight.home,
                          currentIndex: _currentIndex,
                          index: 2,
                        ),
                        BottomNavBTN(
                          onPressed: (val) {
                            animateToPage(val);
      
                            setState(() {
                              _currentIndex = val;
                            });
                          },
                          icon: IconlyLight.heart,
                          currentIndex: _currentIndex,
                          index: 3,
                        ),
                        BottomNavBTN(
                          onPressed: (val) {
                            animateToPage(val);
      
                            setState(() {
                              _currentIndex = val;
                            });
                          },
                          icon: IconlyLight.profile,
                          currentIndex: _currentIndex,
                          index: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}
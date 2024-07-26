

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../../common/constants.dart';
import '../../../common/size_config.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

GlobalKey<NavigatorState> updatesNavigatorKey = GlobalKey<NavigatorState>();

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          const SizedBox(width: 10),
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
              duration: const Duration(seconds: 1),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade200,
                ),
                  borderRadius: const BorderRadius.all(Radius.circular(5))
              ),
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.grey,),
                  Text(
                    'Saint Petersburg',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),
          WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingScaleUp(
              duration: const Duration(seconds: 1),
            ),
            child: Container(
              padding: const EdgeInsets.only(right: 15),
              child: const CircleAvatar(
                backgroundColor: Colors.orange,
                backgroundImage: AssetImage("assets/images/profile_user.png"),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.orange.shade50,
                Colors.orange.shade100,
                Colors.orange.shade200,
                Colors.orange.shade300,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            // shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    WidgetAnimator(
                      incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                        duration: const Duration(seconds: 1),
                      ),
                      child: const Text(
                        'Hi, Marina',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    WidgetAnimator(
                      incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                        duration: const Duration(seconds: 1),
                      ),
                      child: const Text(
                        "let's select your perfect place",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: (MediaQuery.of(context).size.width / 2) - 30,
                      child: Row(
                        children: [
                          Expanded(
                            child: WidgetAnimator(
                              incomingEffect: WidgetTransitionEffects.outgoingScaleDown(
                                duration: const Duration(seconds: 1),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: AppColor.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'BUY',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    TextAnimator(
                                      '1034',
                                      characterDelay: Duration(milliseconds: 100),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      'Offers',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: WidgetAnimator(
                              incomingEffect: WidgetTransitionEffects.outgoingScaleDown(
                                duration: const Duration(seconds: 1),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.orange.shade100,
                                      Colors.orange.shade50,
                                      Colors.orange.shade50,
                                      Colors.white,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  // color: Colors.orange,
                                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'RENT',
                                      style: TextStyle(
                                        color: Color(0xffA5957E),
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    TextAnimator(
                                      '2212',
                                      characterDelay: Duration(milliseconds: 100),
                                      style: TextStyle(
                                          color: Color(0xffA5957E),
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      'Offers',
                                      style: TextStyle(
                                        color: Color(0xffA5957E),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                  ],
                ),
              ),

              Expanded(
                child: WidgetAnimator(
                  incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                    duration: const Duration(seconds: 1),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: GridView.custom(
                      gridDelegate: SliverQuiltedGridDelegate(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          const QuiltedGridTile(1, 2),
                          const QuiltedGridTile(1, 1),
                        ],
                      ),
                      childrenDelegate: SliverChildBuilderDelegate((context, index){
                        return Container(
                          decoration: const BoxDecoration(
                            color: AppColor.orange,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            image: DecorationImage(
                              image: AssetImage("assets/images/furniture.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange.shade100.withOpacity(0.8),
                                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                                ),
                                height: 50,
                                margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 10),
                                    const Expanded(
                                      child: Text(
                                        'Gladkova St., 25',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    WidgetAnimator(
                                      incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
                                        duration: const Duration(seconds: 1),
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(right: 3),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(25)),
                                        ),
                                        height: 45,
                                        width: 45,
                                        child: const Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                        },
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

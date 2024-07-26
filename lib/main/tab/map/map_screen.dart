
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  MapScreenState createState() => MapScreenState();
}

GlobalKey<NavigatorState> mapNavigatorKey = GlobalKey<NavigatorState>();

class MapScreenState extends State<MapScreen> {


  @override
  void initState() {

    getCurrentLocation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          children: [
            FlutterMap(
              options: const MapOptions(
                backgroundColor: Colors.black,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
              ],
            ),
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 150,
              left: 20,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  alignment: AlignmentDirectional.bottomEnd,
                  customButton: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                    ),
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/bundle.png", scale: 2, color: Colors.white),
                  ),
                  items: [
                    ...MenuItems.firstItems.map(
                          (item) => DropdownMenuItem<MenuItem>(
                        value: item,
                        child: MenuItems.buildItem(item),
                      ),
                    ),
                    const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                    ...MenuItems.secondItems.map(
                          (item) => DropdownMenuItem<MenuItem>(
                        value: item,
                        child: MenuItems.buildItem(item),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    MenuItems.onChanged(context, value! as MenuItem);
                  },
                  dropdownStyleData: DropdownStyleData(
                    width: 200,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    offset: const Offset(50, 8),
                  ),
                  menuItemStyleData: MenuItemStyleData(
                    customHeights: [
                      ...List<double>.filled(MenuItems.firstItems.length, 48),
                      8,
                      ...List<double>.filled(MenuItems.secondItems.length, 48),
                    ],
                    padding: const EdgeInsets.only(left: 16, right: 16),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 90,
              left: 20,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  customButton: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                    ),
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset("assets/images/navigation.png", scale: 3, color: Colors.white),
                  ),
                items: [
                  ...MenuItems.firstItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                      value: item,
                      child: MenuItems.buildItem(item),
                    ),
                  ),
                  const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                  ...MenuItems.secondItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                      value: item,
                      child: MenuItems.buildItem(item),
                    ),
                  ),
                ],
                onChanged: (value) {
                  MenuItems.onChanged(context, value! as MenuItem);
                },
                dropdownStyleData: DropdownStyleData(
                  width: 200,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  offset: const Offset(50, 8),
                ),
                menuItemStyleData: MenuItemStyleData(
                  customHeights: [
                    ...List<double>.filled(MenuItems.firstItems.length, 48),
                    8,
                    ...List<double>.filled(MenuItems.secondItems.length, 48),
                  ],
                  padding: const EdgeInsets.only(left: 16, right: 16),
                ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 90,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                ),
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.filter_list_sharp, color: Colors.white, size: 20,),
                    SizedBox(width: 10),
                    Text(
                      'List Of Variants',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: MediaQuery.of(context).padding.top + 10),
              child: Row(
                children: [
                  Expanded(
                    child: WidgetAnimator(
                      incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
                        duration: const Duration(seconds: 1),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.search, color: Colors.grey, size: 30,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Saint Petersburg",
                          hintStyle: TextStyle(color: Colors.black),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          isDense: true,
                        ),
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/filter.png", scale: 4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  void getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

  }

}

class MenuItem {
  const MenuItem({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;
}

abstract class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings];
  static const List<MenuItem> secondItems = [logout];

  static const home = MenuItem(text: 'Cosy area', icon: Icons.security);
  static const share = MenuItem(text: 'Price', icon: Icons.account_balance_wallet_outlined);
  static const settings = MenuItem(text: 'Infrastructure', icon: Icons.settings);
  static const logout = MenuItem(text: 'Without any layer', icon: Icons.layers);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.grey, size: 22),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ],
    );
  }

  static void onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
      //Do something
        break;
      case MenuItems.settings:
      //Do something
        break;
      case MenuItems.share:
      //Do something
        break;
      case MenuItems.logout:
      //Do something
        break;
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/size_config.dart';


class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  WishListScreenState createState() => WishListScreenState();
}

GlobalKey<NavigatorState> wishListScreenNavigatorKey = GlobalKey<NavigatorState>();

class WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          "Wish List",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
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
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (ctx, i) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.notifications,
                        size: 40,
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      const Text(
                        "Details Updates Items",
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "No.$i",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

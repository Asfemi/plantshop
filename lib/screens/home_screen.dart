import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:plantshop/components/icon_card.dart';
import 'package:plantshop/utilities/constants.dart';
import 'package:plantshop/utilities/models.dart';
import 'package:plantshop/utilities/utilities.dart';

import '../components/plant_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;

  List<IconData> iconList = [
    LineIcons.shapes,
    LineIcons.circle,
    LineIcons.square,
  ];

  List<PlantModel> plantData = Utilities.getPlantData();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'welcome🔥',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87),
                      ),
                      Text(
                        'Kate Bush',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Badge(
                    label: Center(child: Text('1')),
                    backgroundColor: kDarkCardColor,
                    child: IconCard(
                      cardPadding: 5,
                      cardChild: Icon(Icons.notifications_none_outlined),
                      cardColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 0,
                      shadowColor: kLightCardColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,
                                color: Colors.black.withOpacity(0.5)),
                            hintText: '   Search',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black.withOpacity(0.3))),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const IconCard(
                      cardPadding: 5,
                      cardChild: Icon(
                        Icons.dashboard,
                        color: Colors.white,
                        size: 18,
                      ),
                      cardColor: Colors.black)
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(
                    Icons.grid_view,
                    color: Colors.grey,
                    size: 12,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Most Popular',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Text(
                    'Show All',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade400),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: size.height * 0.5,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: plantData.length,
                    itemBuilder: (context, index) {
                      return PlantCard(
                        size: size,
                        cardColor: plantData[index].plantCardColor,
                        plantImage: plantData[index].plantImage,
                        plantName: plantData[index].plantName,
                        plantPrice: plantData[index].plantPrice,
                        index: index,
                      );
                    }),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(
                    Icons.grid_view,
                    color: Colors.grey,
                    size: 12,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'All Plants',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 50,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black,
            splashColor: Colors.black,
            child: const Icon(
              LineIcons.shapes,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: kBottomNavBarColor,
        elevation: 20,
        borderColor: kLightCardColor,
        shadow: const BoxShadow(
          color: Colors.transparent,
          spreadRadius: 0.0,
          blurRadius: 0.0,
        ),
        //splashColor: kBottomNavBarColor,
        //height: 80,
        activeColor: Colors.black,
        inactiveColor: Colors.grey,
        leftCornerRadius: 25,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.end,
        //notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}

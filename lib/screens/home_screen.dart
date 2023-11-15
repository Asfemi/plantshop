import 'package:flutter/material.dart';
import 'package:plantshop/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                        'welcome 🔥',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        'Ayo Maselliene',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  IconCard(
                    cardChild: Icon(Icons.notifications_active_outlined),
                    cardColor: Colors.white,
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
                                color: Colors.black.withOpacity(0.5))),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const IconCard(
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
                    Icons.dashboard,
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      width: size.width * 0.65,
                      height: size.height * 0.45,
                      child: const Card(
                        color: kLightCardColor,
                        child: Stack(children: []),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: size.width * 0.65,
                      height: size.height * 0.45,
                      child: const Card(
                        color: kDarkCardColor,
                        child: Stack(children: []),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(Icons.dashboard),
                  SizedBox(width: 10),
                  Text('All Plants'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    required this.cardChild,
    required this.cardColor,
    super.key,
  });

  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: cardChild,
      ),
    );
  }
}

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
                    cardPadding: 5,
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
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: kLightCardColor,
                        child: Stack(children: [
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: size.width * 0.56,
                                height: size.height * 0.13,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  color: Colors.white,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Leaf Plant',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              '\$7.90',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                        IconCard(
                                            cardPadding: 8,
                                            cardChild: Icon(
                                              Icons.shop,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                            cardColor: Colors.black),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: IconCard(
                                cardPadding: 8,
                                cardChild: Icon(
                                  Icons.heart_broken,
                                  color: kDarkCardColor,
                                  size: 14,
                                ),
                                cardColor: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: size.width * 0.65,
                      height: size.height * 0.45,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors: [
                              kDarkCardColor,
                              kDarkCardColor,
                            ],
                            begin: FractionalOffset(1.0, 0.0),
                            end: FractionalOffset(0.0, 1.0),
                            stops: [
                              0.1,
                              1.0,
                            ],
                            tileMode: TileMode.clamp,
                          ),
                        ),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(20.0),
                        // ),

                        // color: ,
                        child: Stack(children: [
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                width: size.width * 0.58,
                                height: size.height * 0.13,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: IconCard(
                                cardPadding: 10,
                                cardChild: Icon(
                                  Icons.heart_broken,
                                  color: kDarkCardColor,
                                  size: 14,
                                ),
                                cardColor: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(
                    Icons.dashboard,
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
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    required this.cardPadding,
    required this.cardChild,
    required this.cardColor,
    super.key,
  });

  final Color cardColor;
  final Widget cardChild;
  final double cardPadding;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardPadding),
      ),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: cardChild,
      ),
    );
  }
}

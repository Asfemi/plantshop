import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:plantshop/components/icon_card.dart';
import 'package:plantshop/screens/purchase_plant_screen.dart';

import '../utilities/constants.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.size,
    required this.cardColor,
    required this.plantName,
    required this.plantPrice,
    required this.plantImage,
    required this.index,
  });

  final Size size;
  final Color cardColor;
  final String plantPrice;
  final String plantName;
  final String plantImage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      width: size.width * 0.7,
      height: size.height * 0.5,
      child: Card(
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: cardColor,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PurchasePlantScreen(index: index),
              ),
            );
          },
          child: Stack(children: [
            Positioned(
              left: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: size.width * 0.6,
                  height: size.height * 0.13,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                plantName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                plantPrice,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          const IconCard(
                              cardPadding: 8,
                              cardChild: Icon(
                                LineIcons.shoppingCart,
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
            Positioned(
              top: 5,
              left: 5,
              child: Container(
                height: size.height * 0.4,
                child: Image.asset(plantImage),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:plantshop/components/icon_card.dart';
import 'package:plantshop/utilities/constants.dart';
import 'package:plantshop/utilities/models.dart';
import 'package:plantshop/utilities/utilities.dart';

class PurchasePlantScreen extends StatefulWidget {
  const PurchasePlantScreen({super.key, required this.index});
  final int index;

  @override
  State<PurchasePlantScreen> createState() => _PurchasePlantScreenState();
}

List<PlantModel> plantData = Utilities.getPlantData();

class _PurchasePlantScreenState extends State<PurchasePlantScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: plantData[widget.index].plantCardColor,
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: size.height * 0.7,
                width: size.width,
                color: kDarkCardColor,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, right: 20, bottom: 20),
                height: size.height * 0.4,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          plantData[widget.index].plantName,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconCard(
                          cardPadding: 5,
                          cardChild: Text(
                            plantData[widget.index].plantPrice,
                            style: const TextStyle(
                                letterSpacing: 2, fontWeight: FontWeight.w700),
                          ),
                          cardColor: Colors.green.shade100)
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    plantData[widget.index].plantDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: size.width * 0.9,
                    child: const IconCard(
                        cardPadding: 15,
                        cardChild: Row(
                          children: [
                            Icon(
                              LineIcons.addToShoppingCart,
                              color: Colors.white70,
                            ),
                            Spacer(),
                            Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Colors.white70,
                                letterSpacing: 2,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        cardColor: Colors.black),
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 40,
              // left: 5,
              // right: 1,
              child: Container(
                height: size.height * 0.6,
                child: Image.asset(plantData[widget.index].plantImage),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_outlined),
                        color: Colors.white54,
                      ),
                      IconCard(cardPadding: 10, cardChild: Image.asset('name'), cardColor: Colors.lightGreen,)
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

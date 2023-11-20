import 'package:flutter/material.dart';

class PlantModel {
  PlantModel({
    required this.plantDescription,
    required this.plantImage,
    required this.plantName,
    required this.plantPrice,
    required this.plantCardColor,
  });
  final String plantName;
  final String plantPrice;
  final String plantImage;
  final String plantDescription;
  final Color plantCardColor;
}

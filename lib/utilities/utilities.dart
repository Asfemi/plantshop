import 'package:plantshop/utilities/constants.dart';
import 'package:plantshop/utilities/models.dart';

class Utilities {
  static List<PlantModel> getPlantData() {
    return [
      PlantModel(
        plantDescription:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.',
        plantImage: 'lib/assets/Plant_4a.png',
        plantName: 'Rubber Plant',
        plantPrice: '\$7.90',
        plantCardColor: kLightCardColor,
      ),
      PlantModel(
        plantDescription:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.',
        plantImage: 'lib/assets/Plant_1a.png',
        plantName: 'leaf Plant',
        plantPrice: '\$5.40',
        plantCardColor: kDarkCardColor,
      ),
    ];
  }
}

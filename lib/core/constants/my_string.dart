import 'package:hotalbookingapp/core/constants/my_assets.dart';

import '../../presentation/screen/home/models/features_properties_model.dart';

class MyString{
  MyString._();


static const String appname="Hotal Booking App";

static  List<FeaturedPropertiesModel> featuredlist=[
  
FeaturedPropertiesModel(roomimage: MyAssets.rectangle, roomname: "Le Bristol Hotel", destination: "Istanbul, Turkiye", price: "29", timingmode: "/ night"),

FeaturedPropertiesModel(roomimage: MyAssets.rectangle1, roomname: "Maison Souquet", destination: "Paris, France", price: "29", timingmode: "/ night"),

FeaturedPropertiesModel(roomimage: MyAssets.rectangle2, roomname: "Le Meurice Hotel", destination: "London, United Kingdom", price: "29", timingmode: "/ night"),


];

}
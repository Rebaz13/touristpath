import 'package:flutter/material.dart';

class RecipeModel {
  String title, writer, description;
  String cookingTime;
  int servings;
  String location;
  List<String> ingredients = [];
  String imgPath;
  RecipeModel({
    @required this.title,
    @required this.writer,
    @required this.description,
    @required this.cookingTime,
    @required this.servings,
    @required this.imgPath,
    @required this.ingredients,
    String location,
  });
  static List<RecipeModel> demoRecipe = [
    RecipeModel(
      title: 'Ramada Hotel ',
      writer: "Sulaymaniyah Salim Street",
      description:
          'A touch of Dijon mustard, salty bacon, melty cheese, and a handful of greens seriously upgrades scrambled eggs, without too much effort!',
      location:
          'https://www.wyndhamhotels.com/ramada/sulaymaniyah-iraq/ramada-hotel-sulaymaniyah-salim-street/overview?CID=LC:RA::GGL:RIO:National:46890&iata=00093796',
      cookingTime: 'Map',
      servings: 1,
      imgPath: 'images/h1.jpg',
      ingredients: [
        'Phone Number:053 320 9515',
        'Hotel rooms: royal suite - Normal rooms',
        'Internet(wifi) provided for guessts',
        'Gym',
        'rooms supported by key Card to Open',
        'Resturant',
        'full service',
      ],
    ),
    RecipeModel(
      title: '  Grand Millennium Hotel',
      writer: "Sulaymaniah Medya Street",
      description:
          'Sneak some spinach into your morning meal for a boost of nutrients to start your day off right.',
      location:
          'https://www.wyndhamhotels.com/ramada/sulaymaniyah-iraq/ramada-hotel-sulaymaniyah-salim-street/overview?CID=LC:RA::GGL:RIO:National:46890&iata=00093796',
      cookingTime: 'Map',
      servings: 2,
      imgPath: 'images/h2.jpg',
      ingredients: [
        '0770 700 0000',
        'Hotel rooms: royal suite - Normal rooms',
        'Internet(wifi) provided for guessts',
        'Gym',
        'rooms supported by key Card to Open',
        'Resturant',
        'full service',
      ],
    ),
    RecipeModel(
      title: 'Khan Saray Hotel ',
      writer: " Sulaymaniah, Mawlawi Street ",
      description:
          'A hearty breakfast that easily feeds a family of four, all on one sheet pan? Yes, please.',
      location:
          'https://www.wyndhamhotels.com/ramada/sulaymaniyah-iraq/ramada-hotel-sulaymaniyah-salim-street/overview?CID=LC:RA::GGL:RIO:National:46890&iata=00093796',
      cookingTime: 'Map',
      servings: 3,
      imgPath: 'images/h33.jpg',
      ingredients: [
        'Phone Number: 0770 928 6000',
        'Hotel rooms: royal suite - Normal rooms',
        'Internet(wifi) provided for guessts',
        'Gym',
        'rooms supported by key Card to Open',
        'Resturant',
        'full service',
      ],
    ),
    RecipeModel(
      title: 'Titanic Hotel  ',
      writer: "Sulaymaniah, Malik mahmood circle, next to Chavy Land Goizha",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      location:
          'https://www.wyndhamhotels.com/ramada/sulaymaniyah-iraq/ramada-hotel-sulaymaniyah-salim-street/overview?CID=LC:RA::GGL:RIO:National:46890&iata=00093796',
      cookingTime: 'Map',
      servings: 4,
      imgPath: 'images/h4.jpg',
      ingredients: [
        'Phone Number: 053 323 7355',
        'Hotel rooms: royal suite - Normal rooms',
        'Internet(wifi) provided for guessts',
        'Gym',
        'rooms supported by key Card to Open',
        'Resturant',
        'full service',
      ],
    ),
    RecipeModel(
      title: 'Cristal Erbil Hotel ',
      writer: "Erbil 100m street",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      location:
          'https://www.wyndhamhotels.com/ramada/sulaymaniyah-iraq/ramada-hotel-sulaymaniyah-salim-street/overview?CID=LC:RA::GGL:RIO:National:46890&iata=00093796',
      cookingTime: 'Map',
      servings: 5,
      imgPath: 'images/h5.jpg',
      ingredients: [
        'Phone Numbers: 0751 132 60 60',
        'Hotel rooms: royal suite - Normal rooms',
        'Internet(wifi) provided for guessts',
        'Gym',
        'rooms supported by key Card to Open',
        'Resturant',
        'full service',
      ],
    ),
    RecipeModel(
      title: 'Divan Erbil Hotel',
      writer: "Gulan، Erbil ",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      location:
          'https://www.wyndhamhotels.com/ramada/sulaymaniyah-iraq/ramada-hotel-sulaymaniyah-salim-street/overview?CID=LC:RA::GGL:RIO:National:46890&iata=00093796',
      cookingTime: 'Map',
      servings: 6,
      imgPath: 'images/h6.jpg',
      ingredients: [
        'Phone Number:066 210 5000',
        'Hotel rooms: royal suite - Normal rooms',
        'Internet(wifi) provided for guessts',
        'Gym',
        'rooms supported by key Card to Open',
        'Resturant',
        'full service',
      ],
    ),
    RecipeModel(
      title: 'Erbil Quartz Hotel ',
      writer: " Opposite of The Museume Erbil ",
      description:
          'Just wait til you break this one out at the breakfast table: sweet tomatoes, runny yolks, and plenty of toasted bread for dipping.',
      location:
          'https://www.wyndhamhotels.com/ramada/sulaymaniyah-iraq/ramada-hotel-sulaymaniyah-salim-street/overview?CID=LC:RA::GGL:RIO:National:46890&iata=00093796',
      cookingTime: 'Map',
      servings: 7,
      imgPath: 'images/h7.jpg',
      ingredients: [
        'Phone Number: 0750 397 7373',
        'Hotel rooms: royal suite - Normal rooms',
        'Internet(wifi) provided for guessts',
        'Gym',
        'rooms supported by key Card to Open',
        'Resturant',
        'full service',
      ],
    ),
  ];
}

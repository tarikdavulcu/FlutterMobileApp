import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:octo_image/octo_image.dart';
import 'package:ultimate_bundle/freebies/sneakers/helpers/themes.dart';

part 'models/sneaker_model.dart';
part 'screens/sneaker_bottom_nav_screen.dart';
part 'screens/sneaker_home_screen.dart';
part 'widgets/horizontal_card.dart';
part 'widgets/sneaker_card_type_2.dart';

class FreebiesSneakerScreen extends StatelessWidget {
  const FreebiesSneakerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sneakers',
      debugShowCheckedModeBanner: false,
      theme: themeLight(context),
      home: const SneakerBottomNavScreen(),
    );
  }
}

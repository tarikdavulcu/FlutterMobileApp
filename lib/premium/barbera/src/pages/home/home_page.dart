import 'package:cached_network_image/cached_network_image.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/barbera/src/helpers/constans.dart';
import 'package:ultimate_bundle/premium/barbera/src/helpers/screens.dart';
import 'package:ultimate_bundle/premium/barbera/src/mock_data/barber_mock.dart';
import 'package:ultimate_bundle/premium/barbera/src/mock_data/barbershop_mock.dart';
import 'package:ultimate_bundle/premium/barbera/src/mock_data/category_mock.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/barber_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/barbershop_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/category_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/browse_barber/browse_barber_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/browse_barbershop/browse_barbershop_page.dart';

part 'screens/home_screen.dart';
part 'widgets/build_barber_card.dart';
part 'widgets/build_barbershop_card.dart';
part 'widgets/build_category_card.dart';
part 'widgets/build_header.dart';
part 'widgets/build_scrollable_barber.dart';
part 'widgets/build_scrollable_barbershop.dart';
part 'widgets/build_scrollable_category.dart';

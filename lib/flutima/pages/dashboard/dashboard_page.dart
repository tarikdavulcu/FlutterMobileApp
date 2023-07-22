import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/colors.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/flutima/helpers/uikit_model.dart';
import 'package:ultimate_bundle/flutima/list_item/all_list.dart';
import 'package:ultimate_bundle/flutima/list_item/free_list.dart';
import 'package:ultimate_bundle/flutima/list_item/popular_list.dart';
import 'package:ultimate_bundle/flutima/list_item/premium_list.dart';
import 'package:ultimate_bundle/flutima/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../freebies/ecommerce_1/helpers/snack_toast.dart';
import '../../../freebies/furniture_1/widgets/custom_elevated_button.dart';

part 'screens/dashboard_screen.dart';
part 'widgets/sliver_app_bar_delegate.dart';
part 'widgets/tab_bar_body.dart';

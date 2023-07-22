import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/flutima/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/flutima/pages/ui_detail/ui_detail_page.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/bakery_store_1_page.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/main.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/doctor_consultation_1_page.dart';
import 'package:ultimate_bundle/freebies/ecommerce_1/ecommerce_1_page.dart';
import 'package:ultimate_bundle/freebies/evite/evite_page.dart';
import 'package:ultimate_bundle/freebies/furniture_1/furniture_1_page.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/home_rent_1_page.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/job_finder_1_page.dart';
import 'package:ultimate_bundle/freebies/logitech_store/main.dart';
import 'package:ultimate_bundle/freebies/movie/movie_page.dart';
import 'package:ultimate_bundle/freebies/sneakers/sneaker_page.dart';
import 'package:ultimate_bundle/premium/shuppy/main.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/address/address_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/bottom_navigation/bottom_navigation_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/category/category_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/checkout/checkout_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/favorite/favorite_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/language/language_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/notification/notification_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/order/order_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/payment/payment_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/product/product_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/profile/profile_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/sign_up/sign_up_page.dart';

List<GetPage> allRoutesFlutima = [
  // Core
  GetPage<dynamic>(
    name: UIKitRoutes.uiDetail,
    page: () => const UIDetailScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.setting,
    page: () => const SettingsScreen(),
  ),
  // UI Kit Routes
  GetPage<dynamic>(
    name: UIKitRoutes.shuppy,
    page: () => const ShuppySplashScreen(),
  ),

  // --------------------------------------------------------------------------
  // Freebies Routes
  GetPage<dynamic>(
    name: FreebiesRoutes.sneaker,
    page: () => const FreebiesSneakerScreen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.movie,
    page: () => const FreebiesMovieScreen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.ecommerce1,
    page: () => const FreebiesEcommerce1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.furniture1,
    page: () => const FreebiesFurniture1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.homeRent1,
    page: () => const FreebiesHomeRent1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.doctorConsultation1,
    page: () => const FreebiesDoctorConsultation1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.jobFinder1,
    page: () => const FreebiesJobFinder1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.bakeryStore1,
    page: () => const FreebiesBakeryStore1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.barbershop1,
    page: () => const FreebiesBarbershop1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.logitechStore,
    page: () => const FreebiesLogitechStoreScreen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.evite,
    page: () => const FreebiesEviteScreen(),
  ),

  // --------------------------------------------------------------------------
  // Barbera Routes

  // Shuppy Routes
  GetPage<dynamic>(
    name: ShuppyRoutes.splash,
    page: () => const ShuppySplashScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.address,
    page: () => const ShuppyAddressScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.browseProduct,
    page: () => const ShuppyBrowseProductScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.cart,
    page: () => const ShuppyBottomNavigationScreen(initialIndex: 1),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.category,
    page: () => const ShuppyCategoryScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.checkout,
    page: () => const ShuppyCheckoutScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.checkoutSuccess,
    page: () => const ShuppyCheckoutSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.editProfile,
    page: () => const ShuppyEditProfileScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.favorite,
    page: () => const ShuppyFavoriteScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.forgotPassword,
    page: () => const ShuppyForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.home,
    page: () => const ShuppyBottomNavigationScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.language,
    page: () => const ShuppyLanguageScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.notification,
    page: () => const ShuppyNotificationScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.onBoarding,
    page: () => const ShuppyOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.orderHistory,
    page: () => const ShuppyOrderHistoryScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.orderDetail,
    page: () => const ShuppyOrderDetailScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.payment,
    page: () => const ShuppyPaymentScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.paymentSuccess,
    page: () => const ShuppyPaymentSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.product,
    page: () => const ShuppyProductScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.profile,
    page: () => const ShuppyBottomNavigationScreen(initialIndex: 3),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.signIn,
    page: () => const ShuppySignInScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.signUp,
    page: () => const ShuppySignUpScreen(),
  ),

];

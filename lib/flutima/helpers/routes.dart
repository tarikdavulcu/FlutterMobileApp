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
import 'package:ultimate_bundle/premium/barbera/barbera_index.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/about/about_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/add_credit_card/add_credit_card_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/appointment/appointment_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/appointment_detail/appointment_detail_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/barber/barber_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/barbershop/barbershop_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking/booking_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking_detail/booking_detail_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking_payment/booking_payment_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking_success/booking_success_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/browse_barber/browse_barber_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/browse_barbershop/browse_barbershop_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/change_password/change_password_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/chat/chat_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/comment/comment_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/create_new_password/create_new_password_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/favorite/favorite_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/filter/filter_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/followers/followers_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/following/following_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/forgot_password_success/forgot_password_success_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/gallery/gallery_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/language/language_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/like/like_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/notification/notification_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/otp_verification/otp_verification_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/payment_method/payment_method_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/paypal/paypal_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/phone_verification/phone_verification_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/profile_edit/profile_edit_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/schedule/schedule_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/search/search_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/social_network_sign_in/social_network_sign_in_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/support/support_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/widgets/custom_bottom_navigation_bar.dart';

import '../../premium/barbera/src/pages/sign_up/sign_up_page.dart';

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
    name: UIKitRoutes.barbera,
    page: () => const BarberaSplashScreen(),
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

  GetPage<dynamic>(
    name: BarberaRoutes.splash,
    page: () => const BarberaSplashScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.onBoarding,
    page: () => const BarberaOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.socialNetwork,
    page: () => const BarberaSocialNetworkSignInScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.signIn,
    page: () => const BarberaSignInScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.forgotPassword,
    page: () => const BarberaForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.forgotPasswordSuccess,
    page: () => const BarberaForgotPasswordSuccess(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.createNewPassword,
    page: () => const BarberaCreateNewPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.changePassword,
    page: () => const BarberaChangePasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.signUp,
    page: () => const BarberaSignUpScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.phoneVerification,
    page: () => const BarberaPhoneVerificationScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.otpVerification,
    page: () => const BarberaOTPVerificationScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.home,
    page: () => const BarberaCustomBottomNavigationBar(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.nearby,
    page: () => const BarberaCustomBottomNavigationBar(
      selectedIndex: 1,
    ),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.inbox,
    page: () => const BarberaCustomBottomNavigationBar(selectedIndex: 2),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.appointment,
    page: () => const BarberaCustomBottomNavigationBar(selectedIndex: 3),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.profile,
    page: () => const BarberaCustomBottomNavigationBar(
      selectedIndex: 4,
    ),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.filter,
    page: () => const BarberaFilterScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.chat,
    page: () => const BarberaChatScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.appointment,
    page: () => const BarberaAppointmentScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.appointmentDetail,
    page: () => const BarberaAppointmentDetailScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.favorite,
    page: () => const BarberaFavoriteScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.paymentMethod,
    page: () => const BarberaPaymentMethodScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.addCreditCard,
    page: () => const BarberaAddCreditCardScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.paypal,
    page: () => const BarberaPaypalScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.support,
    page: () => const BarberaSupportScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.language,
    page: () => const BarberaLanguageScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.about,
    page: () => const BarberaAboutScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.following,
    page: () => const BarberaFollowingScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.follower,
    page: () => const BarberaFollowersScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.like,
    page: () => const BarberaLikeScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.setting,
    page: () => const BarberaSettingScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.notification,
    page: () => const BarberaNotificationScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.browseBarbershop,
    page: () => const BarberaBrowseBarbershopScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.browseBarber,
    page: () => const BarberaBrowseBarberScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.profileEdit,
    page: () => const BarberaProfileEditScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.search,
    page: () => const BarberaSearchScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.barbershop,
    page: () => const BarberaBarbershopScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.barber,
    page: () => const BarberaBarberScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.gallery,
    page: () => const BarberaGalleryScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.comment,
    page: () => const BarberaCommentScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingService,
    page: () => const BarberaBookingServiceScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.schedule,
    page: () => const BarberaScheduleScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingDetail,
    page: () => const BarberaBookingDetailScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingPayment,
    page: () => const BarberaBookingPaymentScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingSuccess,
    page: () => const BarberaBookingSuccessScreen(),
  ),
];

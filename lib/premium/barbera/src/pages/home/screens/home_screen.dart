part of '../home_page.dart';

class BarneraHomeScreen extends StatelessWidget {
  const BarneraHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // UserCredential user = Get.arguments[0];

    // ignore: avoid_print
    print(Get.arguments);

    // print(user?.user?.email.toString());
    // ignore: avoid_print
    // showToast(msg: "Hi: ${user.email}");
    // var result = user.user!.email!.split('@');

    return Scaffold(
      body: ListView(
        children: [
          const _BuildHeader(
              // UserName: user.user!.displayName.toString(),
              // uid: user.user!.uid.toString(),
              ),
          const _BuildScrollableCategory(),
          const SizedBox(height: Const.space25),
          _BuildScrollableBarbershop(
            itemList: bestBarbershopList,
            label: AppLocalizations.of(context)!.best_barbershop,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BarberaRoutes.browseBarbershop,
              arguments: BrowseBarbershopArgument(
                title: AppLocalizations.of(context)!.best_barbershop,
                barbershopList: bestBarbershopList,
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildScrollableBarber(
            itemList: topBarberList,
            label: AppLocalizations.of(context)!.barber_specialist,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BarberaRoutes.browseBarber,
              arguments: BrowseBarberArgument(
                title: AppLocalizations.of(context)!.barber_specialist,
                barberList: topBarberList,
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildScrollableBarbershop(
            itemList: popularBarbershopList,
            label: AppLocalizations.of(context)!.popular_barbershop,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BarberaRoutes.browseBarbershop,
              arguments: BrowseBarbershopArgument(
                title: AppLocalizations.of(context)!.popular_barbershop,
                barbershopList: bestBarbershopList,
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}

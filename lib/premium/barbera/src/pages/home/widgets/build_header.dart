part of '../home_page.dart';

class _BuildHeader extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const _BuildHeader({Key? key, required this.UserName, required this.uid})
      : super(key: key);
  // ignore: non_constant_identifier_names
  final String UserName;
  final String uid;

  @override
  Widget build(BuildContext context) {
    //final pathReference = storageRef.child("UserProfilePhotos/$uid.jpg");
    UserCredential usr = Get.arguments[0];
    //printUrl(usr.user!.uid);
    // usr.user
    //     ?.updatePhotoURL(imageUrl.toString())
    //     // ignore: avoid_print
    //     .then((value) => print("profil image Updated"));
    imageUrl = usr.user!.photoURL!;
    final theme = Theme.of(context);

    return Container(
      width: Screens.width(context),
      height: 220,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          // ignore: unnecessary_null_comparison
          image: CachedNetworkImageProvider(Assets.image1),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                color: theme.colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(Const.radius),
                  topRight: Radius.circular(Const.radius),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Const.margin),
            child: Column(
              children: [
                const SizedBox(height: Const.space15),
                SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Const.space12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            // ignore: unnecessary_null_comparison
                            image: imageUrl != null
                                ? CachedNetworkImageProvider(imageUrl)
                                : const CachedNetworkImageProvider(
                                    Assets.profilePhoto),
                          ),
                        ),
                      ),
                      const SizedBox(width: Const.space12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, $UserName',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                AppLocalizations.of(context)!
                                    .relax_look_great_feel_confident,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: Const.space12),
                      InkWell(
                        onTap: () =>
                            Get.toNamed<dynamic>(BarberaRoutes.notification),
                        borderRadius: BorderRadius.circular(Const.space12),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                            borderRadius: BorderRadius.circular(Const.space12),
                          ),
                          child: const Icon(
                            FeatherIcons.bell,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: Const.space25 * 2),
                InkWell(
                  onTap: () => Get.toNamed<dynamic>(BarberaRoutes.search),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Const.space12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(Const.radius),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          FeatherIcons.search,
                          color: Colors.white,
                        ),
                        const SizedBox(width: Const.space12),
                        Text(
                          AppLocalizations.of(context)!
                              .search_for_barbershop_name,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

String imageUrl = "";
// Future<String> printUrl(String uid) async {
//   final storageRef =
//       FirebaseStorage.instance.ref().child("UserProfilePhotos/$uid.jpg");

//   String url = (await storageRef.getDownloadURL()).toString();
//   // ignore: avoid_print
//   print(url);

//   imageUrl = url;
//   return url;
// }

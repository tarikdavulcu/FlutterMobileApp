part of '../profile_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserCredential user = Get.arguments[0];
    fetchDoc(user.user!.uid.toString());
    try {
      namee = user.user!.displayName!;
      imageUrl = user.user!.photoURL!;
    } catch (e) {
      imageUrl = "";
    }

    //printUrl(user.user!.uid);
    final docRef =
        FirebaseFirestore.instance.collection("users").doc(user.user!.uid);
    docRef.snapshots().listen(
      (event) {
        // ignore: avoid_print
        print(
            "AAAAAAAAAAAAAAAAAAAAAAAAA current data: ${event.data()!["name"].toString()}");
      },
      // ignore: avoid_print
      onError: (error) => print("Listen failed: $error"),
    );
    //Table Tüm Datayı Çeker
    // FirebaseFirestore.instance
    //     .collection('users')
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //   querySnapshot.docs.forEach((doc) {
    //     print(doc["name"]);
    //   });
    // });
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: theme.unselectedWidgetColor,
                // ignore: unnecessary_null_comparison
                backgroundImage: imageUrl != ""
                    ? CachedNetworkImageProvider(imageUrl)
                    : const CachedNetworkImageProvider(Assets.profilePhoto),
              ),
              const SizedBox(width: Const.space15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namee.toString(),
                      style: theme.textTheme.headlineLarge,
                    ),
                    const SizedBox(height: Const.space5),
                    Text(
                      user.user!.email.toString(),
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: Const.space15),
                    CustomElevatedButton(
                      height: 30,
                      onTap: () => Get.toNamed<dynamic>(
                          BarberaRoutes.profileEdit,
                          arguments: [user]),
                      label: AppLocalizations.of(context)!.edit_profile,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(Const.radius),
                  onTap: () => Get.toNamed<dynamic>(BarberaRoutes.following),
                  child: Column(
                    children: [
                      Text('128',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontSize: 14,
                          )),
                      Text(
                        AppLocalizations.of(context)!.following,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(Const.radius),
                  onTap: () => Get.toNamed<dynamic>(BarberaRoutes.follower),
                  child: Column(
                    children: [
                      Text('640',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontSize: 14,
                          )),
                      Text(
                        AppLocalizations.of(context)!.follower,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(Const.radius),
                  onTap: () => Get.toNamed<dynamic>(BarberaRoutes.like),
                  child: Column(
                    children: [
                      Text('240',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontSize: 14,
                          )),
                      Text(
                        AppLocalizations.of(context)!.likes,
                        style: theme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String namee = "";
fetchDoc(String uid) async {
  // enter here the path , from where you want to fetch the doc
  DocumentSnapshot pathData =
      await FirebaseFirestore.instance.collection('users').doc(uid).get();

  if (pathData.exists) {
    Map<String, dynamic>? fetchDoc = pathData.data() as Map<String, dynamic>?;

    //Now use fetchDoc?['KEY_names'], to access the data from firestore, to perform operations , for eg
    namee = fetchDoc?['name'];
    // ignore: avoid_print
    print("Addddd $namee");

    // setState(() {});  // use only if needed
  }
}

String imageUrl = "";
Future<String> printUrl(String uid) async {
  final storageRef =
      FirebaseStorage.instance.ref().child("UserProfilePhotos/$uid.jpg");

  String url = (await storageRef.getDownloadURL()).toString();
  // ignore: avoid_print
  print(url);

  imageUrl = url;
  return url;
}

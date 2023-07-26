part of '../social_network_sign_in_page.dart';

class _BuildFooter extends StatelessWidget {
  const _BuildFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        decoration: const BoxDecoration(
          color: ColorDark.card,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Const.radius),
            topRight: Radius.circular(Const.radius),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              label: AppLocalizations.of(context)!.sign_in_with_email,
              onTap: () => Get.toNamed<dynamic>(BarberaRoutes.signIn),
            ),
            const SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.sign_in_with_social_networks,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: Const.space25),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    onTap: () {
                      signInWithGoogle();
                      showToast(
                          msg: AppLocalizations.of(context)!
                              .google_sign_in_clicked);
                    },
                    color: Colors.white,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.google,
                          height: 20,
                        ),
                        const SizedBox(width: Const.space12),
                        Text(
                          AppLocalizations.of(context)!.google,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: ColorLight.fontTitle,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: Const.space25),
                Expanded(
                  child: CustomElevatedButton(
                    onTap: () {
                      signInWithGoogle();
                      showToast(
                        msg: AppLocalizations.of(context)!
                            .google_sign_in_clicked,
                      );
                    },
                    color: const Color(0xFF3b5998),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.facebook,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: Const.space12),
                        Text(
                          AppLocalizations.of(context)!.facebook,
                          style: theme.textTheme.labelMedium
                              ?.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Const.space25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.by_sign_in_you_agree_to_the,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: ColorDark.fontSubtitle,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showToast(msg: AppLocalizations.of(context)!.terms_clicked);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.terms,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: ColorDark.primary,
                    ),
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.and_the,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: ColorDark.fontSubtitle,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showToast(
                        msg: AppLocalizations.of(context)!.conditions_clicked);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.conditions,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: ColorDark.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

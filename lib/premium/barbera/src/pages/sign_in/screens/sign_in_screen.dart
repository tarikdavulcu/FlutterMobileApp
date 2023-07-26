part of '../sign_in_page.dart';

class BarberaSignInScreen extends StatefulWidget {
  const BarberaSignInScreen({Key? key}) : super(key: key);

  @override
  State<BarberaSignInScreen> createState() => _BarberaSignInScreenState();
}

late TextEditingController _emailController;
late TextEditingController _passwordController;

class _BarberaSignInScreenState extends State<BarberaSignInScreen> {
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const _BuildBackgroundImage(),
          _BuildBody(
            children: [
              const _BuildHeader(),
              const SizedBox(height: Const.space25),
              _BuildEmailTextField(emailController: _emailController),
              const SizedBox(height: Const.space15),
              _BuildPasswordTextField(
                passwordController: _passwordController,
                obscureText: _obscureText,
                onObscureTextTap: () {
                  setState(() => _obscureText = !_obscureText);
                },
              ),
              const SizedBox(height: Const.space25),
              CustomElevatedButton(
                onTap: () async {
                  setState(() => _isLoading = true);

                  try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text);
                    Future.delayed(const Duration(seconds: 2), () {
                      setState(() => _isLoading = false);
                      Get.offAllNamed<dynamic>(BarberaRoutes.home);
                    });
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      showToast(msg: "No user found for that email.");

                      setState(() => _isLoading = false);
                    } else if (e.code == 'wrong-password') {
                      showToast(msg: "Wrong password provided for that user.");

                      setState(() => _isLoading = false);
                    } else {
                      showToast(msg: "Bilinmeyen bir hata oluştu :(");

                      setState(() => _isLoading = false);
                    }
                  }
                  // Future.delayed(const Duration(seconds: 2), () {
                  //   setState(() => _isLoading = false);
                  //   Get.offAllNamed<dynamic>(BarberaRoutes.home);
                  // });
                },
                isLoading: _isLoading,
                labelLoading: AppLocalizations.of(context)!.signing,
                label: AppLocalizations.of(context)!.sign_in,
              ),
              const SizedBox(height: Const.space25),
              CustomTextButton(
                onTap: () => Get.toNamed<dynamic>(BarberaRoutes.forgotPassword),
                label: AppLocalizations.of(context)!.forgot_password,
              ),
              const SizedBox(height: Const.space25),
              const _BuildRegisterNavigation(),
            ],
          ),
        ],
      ),
    );
  }
}

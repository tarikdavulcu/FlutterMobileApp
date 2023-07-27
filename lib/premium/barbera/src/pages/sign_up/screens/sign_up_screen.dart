part of '../sign_up_page.dart';

class BarberaSignUpScreen extends StatefulWidget {
  const BarberaSignUpScreen({Key? key}) : super(key: key);

  @override
  State<BarberaSignUpScreen> createState() => _BarberaSignUpScreenState();
}

class _BarberaSignUpScreenState extends State<BarberaSignUpScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordConfirmationController;

  late String _dateOfBirth = '';
  bool _obscureText = true;
  bool _isLoading = false;

  late String token;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    _passwordConfirmationController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
  }

  Future<void> selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dateOfBirth = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    // ignore: unused_element
    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .doc(token)
          .set({
            'name': _fullNameController.text,
            'email': _emailController.text,
            'birthday': _dateOfBirth,
          })

          // ignore: avoid_print
          .then((value) => print("User Added"))
          // ignore: avoid_print
          .catchError((error) => print("Failed to add user: $error"));
    }

    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const _BuildHeader(),
          const SizedBox(height: Const.space25),
          _BuildFullNameTextField(fullNameController: _fullNameController),
          const SizedBox(height: Const.space12),
          _BuildEmailTextField(emailController: _emailController),
          const SizedBox(height: Const.space12),
          _BuildBirthdayTextField(
            onTap: () => selectDate(context),
            selectedDate: _dateOfBirth,
          ),
          const SizedBox(height: Const.space12),
          _BuildPasswordTextField(
            obscureText: _obscureText,
            passwordController: _passwordController,
            onObscureTextTap: () {
              setState(() => _obscureText = !_obscureText);
            },
          ),
          const SizedBox(height: Const.space12),
          _BuildPasswordConfirmationTextField(
            obscureText: _obscureText,
            passwordConfirmationController: _passwordConfirmationController,
            onObscureTextTap: () {
              setState(() => _obscureText = !_obscureText);
            },
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            isLoading: _isLoading,
            onTap: () async {
              setState(() => _isLoading = true);
              try {
                var token = await FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text);
                this.token = token.user!.uid.toString();
                addUser();
                // var acs = ActionCodeSettings(
                //     // URL you want to redirect back to. The domain (www.example.com) for this
                //     // URL must be whitelisted in the Firebase Console.
                //     url: 'https://www.example.com/finishSignUp?cartId=1234',
                //     // This must be true
                //     handleCodeInApp: true,
                //     iOSBundleId: 'com.example.ios',
                //     androidPackageName: 'com.example.android',
                //     // installIfNotAvailable
                //     androidInstallApp: true,
                //     // minimumVersion
                //     androidMinimumVersion: '12');
                // var emailAuth = _emailController.text;
                // FirebaseAuth.instance
                //     .sendSignInLinkToEmail(
                //         email: emailAuth, actionCodeSettings: acs)
                //     .catchError((onError) =>
                //         print('Error sending email verification $onError'))
                //     .then((value) =>
                //         print('Successfully sent email verification'));

                Future.delayed(const Duration(seconds: 2), () {
                  setState(() => _isLoading = false);
                  Get.toNamed<dynamic>(BarberaRoutes.home);
                });
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  showToast(msg: "The password provided is too weak.");
                  setState(() => _isLoading = false);
                  //print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  // print('The account already exists for that email.');
                  showToast(msg: "The account already exists for that email.");
                  setState(() => _isLoading = false);
                }
              } catch (e) {
                // print(e);
                showToast(msg: e.toString());
                setState(() => _isLoading = false);
              }
            },
            label: AppLocalizations.of(context)!.create_account,
            labelLoading: AppLocalizations.of(context)!.please_wait,
          ),
          const SizedBox(height: Const.space15),
          const _BuildTermsAndCondition(),
        ],
      ),
    );
  }
}

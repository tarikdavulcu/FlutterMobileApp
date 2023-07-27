part of '../profile_edit_page.dart';

class BarberaProfileEditScreen extends StatefulWidget {
  const BarberaProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<BarberaProfileEditScreen> createState() =>
      _BarberaProfileEditScreenState();
}

class _BarberaProfileEditScreenState extends State<BarberaProfileEditScreen> {
  late TextEditingController _emailController;
  late TextEditingController _fullNameController;
  String _selectedDate = '';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: email);
    _fullNameController = TextEditingController(text: name);
    name = _fullNameController.text;
    _selectedDate = birthday;
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _fullNameController.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    fetchDoc(user!.uid.toString());
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.edit_profile,
      ),
      body: ListView(
        children: [
          const _BuildCircleAvatar(),
          const SizedBox(height: Const.space25),
          _BuildEmailTextField(controller: _emailController),
          const SizedBox(height: Const.space15),
          _BuildFullNameTextField(controller: _fullNameController),
          const SizedBox(height: Const.space15),
          _BuildBirthdayTextField(
            onTap: () => _selectDate(context),
            selectedDate: _selectedDate,
          ),
          const SizedBox(height: Const.space15),
          const _BuildGenderRadio(),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () {
              setState(() => _isLoading = true);
              updateUser(user.uid.toString(), _fullNameController);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.back<dynamic>();
                showToast(msg: AppLocalizations.of(context)!.profile_updated);
              });
            },
            margin: const EdgeInsets.symmetric(horizontal: Const.margin),
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.save,
            labelLoading: AppLocalizations.of(context)!.saving,
          ),
        ],
      ),
    );
  }
}

String name = "";
String email = "";
String birthday = "";
fetchDoc(String uid) async {
  // enter here the path , from where you want to fetch the doc
  DocumentSnapshot pathData =
      await FirebaseFirestore.instance.collection('users').doc(uid).get();

  if (pathData.exists) {
    Map<String, dynamic>? fetchDoc = pathData.data() as Map<String, dynamic>?;

    //Now use fetchDoc?['KEY_names'], to access the data from firestore, to perform operations , for eg
    name = fetchDoc?['name'];
    email = fetchDoc?['email'];
    birthday = fetchDoc?['birthday'];
    // setState(() {});  // use only if needed
  }
}

Future<void> updateUser(String uid, TextEditingController name) {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  return users
      .doc(uid)
      .update({'name': name.text})
      // ignore: avoid_print
      .then((value) => print("User Updated"))
      // ignore: avoid_print
      .catchError((error) => print("Failed to update user: $error"));
}

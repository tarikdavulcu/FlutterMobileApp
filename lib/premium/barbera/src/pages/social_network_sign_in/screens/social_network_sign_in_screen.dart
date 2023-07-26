part of '../social_network_sign_in_page.dart';

class BarberaSocialNetworkSignInScreen extends StatelessWidget {
  const BarberaSocialNetworkSignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          _BuildBackgroundImage(),
          _BuildGradient(),
          _BuildBody(),
          _BuildFooter()
        ],
      ),
    );
  }
}

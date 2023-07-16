import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:goraiya/constants/assets_constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Goraiya'),
        backgroundColor: Colors.transparent,
      ),
      body:const  Center(
        child: Column(
          children: [
           Text("Goraiya")
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_shop/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
          Expanded(
            child: Text(
              'Cadastro',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
        ],
      ),
    );
  }
}

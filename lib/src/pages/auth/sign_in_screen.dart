import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop/src/pages/auth/components/custom_test_field.dart';
import 'package:fruit_shop/src/pages/auth/sign_up_screen.dart';
import 'package:fruit_shop/src/pages/base/base_screen.dart';
import 'package:fruit_shop/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //App name
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(fontSize: 40),
                        children: [
                          const TextSpan(
                            text: 'Green',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'grocer',
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Category
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(fontSize: 25),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Frutas'),

                            FadeAnimatedText('Verduras'),

                            FadeAnimatedText('Legumes'),

                            FadeAnimatedText('Carnes'),

                            FadeAnimatedText('Cereais'),

                            FadeAnimatedText('Laticinios'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //FORM
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),

                decoration: const BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Email
                    const CustomTextField(icon: Icons.email, label: 'Email'),

                    //Password
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Password',
                      isSecret: true,
                    ),

                    //ENTER BUTTON
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (c) {
                                return const BaseScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Enter',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),

                    //FORGOT PASSWORD
                    Align(
                      alignment: Alignment.centerRight,

                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),

                    //DIVISOR
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //NEW USER BUTTON
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: BorderSide(width: 2, color: Colors.green),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return SignUpScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Create account',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

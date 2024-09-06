import 'package:flutter/material.dart';
import 'package:news_app/views/Register/register_view.dart';
import 'package:news_app/widgets/custom_text_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            image: DecorationImage(
              alignment: Alignment(0, -1),
              fit: BoxFit.contain,
              image: AssetImage('assets/images/login_signup_bg.png'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sing in to your \nAccount',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        'Enter your email and password to log in.',
                        style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo_live_news.png',
                          width: 40,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        RichText(
                          softWrap: false,
                          text: const TextSpan(
                            text: 'Live',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: '\nNews',
                                style: TextStyle(
                                    color: Color(0xFFA3A3A3),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Form(
                        child: Column(
                          children: [
                            const CustomTextFormField(
                              labelText: 'Your e-mail',
                              hintText: 'example@correo.com',
                              width: double.infinity,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CustomTextFormField(
                              labelText: 'Your password',
                              hintText: 'min. 8 caracters',
                              width: double.infinity,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FilledButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                minimumSize: WidgetStatePropertyAll(
                                    Size(double.infinity, 45)),
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xFF000000)),
                              ),
                              child: const Text('Continue'),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 0.5,
                                      color: const Color(0xFFDFDFDF),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    child: Text(
                                      'or',
                                      style: TextStyle(
                                          color: Color(0xFFA8A8A8),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 0.5,
                                      color: const Color(0xFFDFDFDF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FilledButton.icon(
                              onPressed: () {},
                              style: ButtonStyle(
                                minimumSize: const WidgetStatePropertyAll(
                                    Size(double.infinity, 45)),
                                backgroundColor: const WidgetStatePropertyAll(
                                    Color(0xFFFFFFFF)),
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30.0), // Bordes redondeados
                                    side: const BorderSide(
                                        color: Color(0xFFDFDFDF),
                                        width: 1.0), // Borde
                                  ),
                                ),
                              ),
                              label: const Text(
                                'Sign up with Google',
                                style: TextStyle(color: Color(0xFF000000)),
                              ),
                              icon: Image.asset(
                                'assets/images/Google.png',
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FilledButton.icon(
                              onPressed: () {},
                              style: ButtonStyle(
                                minimumSize: const WidgetStatePropertyAll(
                                    Size(double.infinity, 45)),
                                backgroundColor: const WidgetStatePropertyAll(
                                    Color(0xFFFFFFFF)),
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30.0), // Bordes redondeados
                                    side: const BorderSide(
                                        color: Color(0xFFDFDFDF),
                                        width: 1.0), // Borde
                                  ),
                                ),
                              ),
                              label: const Text(
                                'Sign up with Facebook',
                                style: TextStyle(color: Color(0xFF000000)),
                              ),
                              icon: Image.asset(
                                'assets/images/Facebook.png',
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(color: Color(0xFF797979), fontSize: 12),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterView()));
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

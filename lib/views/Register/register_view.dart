import 'package:flutter/material.dart';
import 'package:news_app/views/Login/login_view.dart';
import 'package:news_app/widgets/custom_text_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Getting Started',
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
                        'Let’s create your account here',
                        style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      child: Form(
                          child: Column(
                        children: [
                          const Row(
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  labelText: 'Name',
                                  hintText: 'Name',
                                  width: 200,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  labelText: 'Your Lastname',
                                  hintText: 'Lastname',
                                  width: 200,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const CustomTextFormField(
                              labelText: 'Your email',
                              hintText: 'example@correo.com',
                              width: double.infinity),
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
                            child: const Text('Create account'),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
                Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have account?',
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
                                builder: (context) => const LoginView()));
                      },
                      child: const Text(
                        'Log In',
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

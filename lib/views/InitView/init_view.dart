import 'package:flutter/material.dart';
import 'package:news_app/views/Login/login_view.dart';

class InitView extends StatelessWidget {
  const InitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            image: DecorationImage(
                fit: BoxFit.contain,
                alignment: Alignment(0, -1),
                image: AssetImage('assets/images/init_view_bg.png'))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Image.asset(
                        'assets/images/logo_live_news.png',
                        width: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w500),
                          children: [
                        TextSpan(
                            text: 'Live',
                            style: TextStyle(color: Color(0xFF000000))),
                        TextSpan(
                            text: 'news',
                            style: TextStyle(color: Color(0xFFA3A3A3)))
                      ])),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'A platform to show you the latest news',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Discover the Lastest News with our \nSeamless Onboarding Experiencie',
                    style: TextStyle(color: Color(0xFF797979), fontSize: 12),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 240,
                    height: 45,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFF000000)),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginView()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(),
                            const Text(
                              'Get Started for Free',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500),
                            ),
                            Image.asset(
                              'assets/images/init_foward_button.png',
                              width: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Text(
                '©2024 Live news app. All Rights Reserved',
                style: TextStyle(color: Color(0xFF797979), fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:apps_flutter/pages/homepage.dart';
import 'package:apps_flutter/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/bg.jpeg')),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo.png'))),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Find Gojek\nStay to Indonesia',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Bergabunglah bersama Gojek\nkarya anak bangsa',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17))),
                      child: Text(
                        'Explore Now',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

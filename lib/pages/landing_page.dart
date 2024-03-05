import 'package:first_app/utils/colors.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'assets/images/onboarding-img-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/images/onboarding-img-2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/images/persian.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -10,
                child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Your One-Stop Pet Shop Experience!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: child)
        ],
      ),
    );
  }
}

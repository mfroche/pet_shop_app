import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .6,
            width: double.infinity,
          ),
          Column(
            children: [
              Text('Nearby Stores'),
              const SizedBox(height: 14),
              Text('Your Location'),
              TextField(),
              Row(children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/burmese.png',
                      height: 70,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Text('PET NAME'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Open'),
                        Text('4.8'),
                      ],
                    ),
                    Text('City, Province'),
                    Container(
                      child: Text('OPEN'),
                    )
                  ],
                ),
              ])
            ],
          )
        ],
      ),
    );
  }
}

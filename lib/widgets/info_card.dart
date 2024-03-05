import 'package:first_app/utils/colors.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String trait;
  final String value;

  const InfoCard({
    super.key,
    required this.trait,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(152, 255, 152, 0.1),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            trait,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: yellowColor,
            ),
          ),
        ],
      ),
    );
  }
}

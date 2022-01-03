import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:super_agent_with_flutter/constants/app_styles.dart';

class HomeSectionsCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final ImageProvider sectionImage;
  final double horizontal;
  final double vertical;

  HomeSectionsCard({
    required this.title,
    required this.onTap,
    required this.sectionImage,
    required this.horizontal,
    required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF2553CF),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
          child: Column(
            children: [
              Image(
                image: sectionImage,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                title,
                style: AppStyles.latoRegular(
                  color: Colors.white,
                  size: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

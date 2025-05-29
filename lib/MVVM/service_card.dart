import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music/MVVM/service_model.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({required this.service, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20 , bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Rounded corners
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              service.image2,
              height: 70,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
      
            // Blur and overlay
         Container(
            height: 70,
            width: double.infinity,
            color: Colors.black.withOpacity(0.65),
          ),

      
            // Foreground content
            Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Left Icon
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Image.asset(service.image1, height: 24, width: 24),
                  ),
                  const SizedBox(width: 16),
      
                  // Title & Subtitle
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          service.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          service.subtitle,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
      
                  // Right Arrow Icon
                  Icon(Icons.keyboard_double_arrow_right_outlined, color: Colors.white54, size: 18),
                ],
              ),
            ),
          ],
        )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/MVVM/service_card.dart';
import 'package:music/MVVM/service_model.dart';

class DetailScreen extends StatelessWidget {
  final ServiceModel service;

  DetailScreen({required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(service.image2, fit: BoxFit.cover),
          ),
          Container(
            width: double.infinity,
            color: Colors.black.withOpacity(0.65),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              Card(elevation: 10,
              shadowColor: Colors.blueAccent,
                child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Image.asset(service.image1,),
                    Column(children: [Text(service.title , style: GoogleFonts.syne(fontSize: 30),),
                    Text(service.subtitle)],)
                  ],
                ),
              ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

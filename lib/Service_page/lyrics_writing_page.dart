import 'package:flutter/material.dart';
import 'package:music/MVVM/service_card.dart';
import 'package:music/MVVM/service_model.dart';


class DetailScreen extends StatelessWidget {
  final ServiceModel service;

  DetailScreen({required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(service.title)),
      body: Center(child: ServiceCard(service: service)),
    );
  }
}

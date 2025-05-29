import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music/MVVM/service_model.dart';


final serviceProvider = Provider<ServiceViewModel>((ref) => ServiceViewModel());

class ServiceViewModel {
  final List<ServiceModel> services = [
    ServiceModel(
      title: 'Music Production',
      subtitle: 'Custom instrumentals & film scoring',
      image1: 'images/i1.png',
      image2: 'images/1.png',
    ),
    ServiceModel(
      title: 'Music Production',
      subtitle: 'Custom instrumentals & film scoring',
      image1: 'images/i2.png',
      image2: 'images/2.png',
    ),
    ServiceModel(
      title: 'Music Production',
      subtitle: 'Custom instrumentals & film scoring',
      image1: 'images/i3.png',
      image2: 'images/3.png',
    ),
    ServiceModel(
      title: 'Music Production',
      subtitle: 'Custom instrumentals & film scoring',
      image1: 'images/i4.png',
      image2: 'images/4.png',
    ),
  ];
}

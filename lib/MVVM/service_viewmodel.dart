import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music/MVVM/service_model.dart';


final serviceProvider = Provider<ServiceViewModel>((ref) => ServiceViewModel());

class ServiceViewModel {
  final List<ServiceModel> services = [
    ServiceModel(
      title: 'Music Production',
      subtitle: 'Custom instrumentals & film scoring',
      image1: 'images/f1.png',
      image2: 'images/1.png',
    ),
    ServiceModel(
      title: 'Mixing & Mastering',
      subtitle: 'Make your tracks Radio-ready',
      image1: 'images/f2.png',
      image2: 'images/2.png',
    ),
    ServiceModel(
      title: 'Lyrics Writing',
      subtitle: 'Turn feelings into lyrics',
      image1: 'images/f3.png',
      image2: 'images/3.png',
    ),
    ServiceModel(
      title: 'Vocals',
      subtitle: 'Vocals that bring your lyrics to life',
      image1: 'images/f4.png',
      image2: 'images/4.png',
    ),
  ];
}

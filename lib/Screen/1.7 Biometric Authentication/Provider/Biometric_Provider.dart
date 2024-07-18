import 'package:adv_flutter_ch1/Screen/1.7%20Biometric%20Authentication/View/SafeGallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:local_auth/local_auth.dart';

class GalleryProvider extends ChangeNotifier{

  final LocalAuthentication auth = LocalAuthentication();
  bool _didAuthenticate = false;

  Future<void> localUserAuthentication(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {

      return;
    }

    if (availableBiometrics.isEmpty) {

      return;
    }

    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to access hide folder',
      );
      _didAuthenticate = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {

    }

    if (_didAuthenticate) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Safegallery(),
      ));
    } else {
    }
  }

  int randomNumber() {
    Random random = Random();
    int a = random.nextInt(1100);
    return a;
  }
}
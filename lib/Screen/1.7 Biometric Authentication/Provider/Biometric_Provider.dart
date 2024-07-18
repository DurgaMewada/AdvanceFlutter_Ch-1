import 'package:adv_flutter_ch1/Screen/1.7%20Biometric%20Authentication/View/SafeGallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:local_auth/local_auth.dart';

class GalleryProvider extends ChangeNotifier{

  final LocalAuthentication auth = LocalAuthentication();
  bool password = false;

  Future<void> localUserAuthentication(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {}
    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Verify with Fingerprint',
      );
      password = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {}

    if (password) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Safegallery(),
      ));
    } else {
    }
  }


}
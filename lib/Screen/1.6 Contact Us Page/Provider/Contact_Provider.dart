import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactprovider extends ChangeNotifier{

  void launchCall()
  {
    Uri url = Uri.parse('tel: +91 9313381084');
    launchUrl(url);
  }
  void launchMsg()
  {
    Uri url = Uri.parse('sms: +91 9313381084');
    launchUrl(url);
  }
  void launchMail()
  {
    Uri url = Uri.parse('mailto: mewadadurga83@gmail.com');
    launchUrl(url);
  }
  void launchGithub()
  {
    Uri url = Uri.parse('https://github.com/DurgaMewada');
    launchUrl(url,mode: LaunchMode.inAppWebView);
  }
  void launchLinkedin()
  {
    Uri url = Uri.parse('https://www.linkedin.com/in/me/');
    launchUrl(url,mode: LaunchMode.inAppWebView);
  }
  void launchInsta()
  {
    Uri url = Uri.parse('https://www.instagram.com/mewadaqueen/');
    launchUrl(url,mode: LaunchMode.inAppWebView);
  }
}
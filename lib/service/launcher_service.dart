import 'package:url_launcher/url_launcher.dart';

class LauncherService {
  void skype(String userName) async {
    await launch(
      'skype:$userName',
    );
  }

  void sendMail(String to) async {
    var uri = 'mailto:$to?subject=Greetings&body=Hello Packiaseelan,';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  void callMe(String phoneNumber) async {
    // Android
    var uri = 'tel:$phoneNumber';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      // iOS
      var uri = 'tel:$phoneNumber';
      if (await canLaunch(uri)) {
        await launch(uri);
      } else {
        throw 'Could not launch $uri';
      }
    }
  }

  void whatsApp(String phoneNumber) {
    // if (Platform.isAndroid) {
    //   var uri = "https://wa.me/$phoneNumber/?text=${Uri.parse('')}"; // new line
    //   launch(uri);
    // } else if (Platform.isIOS) {
    //   var uri =
    //       "https://api.whatsapp.com/send?phone=$phoneNumber=${Uri.parse('')}"; // new line
    //   launch(uri);
    // } else {
    //   var uri = "https://api.whatsapp.com/send/?phone=($phoneNumber)";
    //   launch(uri);
    // }
      var uri = "https://api.whatsapp.com/send/?phone=($phoneNumber)";
      launch(uri);
  }
}

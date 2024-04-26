import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Provider_Calss extends ChangeNotifier {
  WebViewController? webViewController;


  List name = [
    "BMV",
    "Audi",
    "Jaguar",

    "Volvo",
    "Bentley",

    "Honda",
    "Mahindra",
    "Hyundai",

    "Skoda",
    "MG Motor",
    "Kia",
  ];

  List Link = [
    "https://www.bmw.in/",
    "https://www.audi.com/",
    "https://www.jaguar.com",

    "https://www.volvo.com",
    "https://www.bentleymotors.com/",

    "https://www.honda.com/",
    "https://www.mahindra.com/",
    "https://www.hyundai.com/",

    "https://www.skoda-auto.co.in/",
    "https://www.mgmotor.co.in/",
    "https://www.kia.com/",

  ];

  void loadurl(int inde) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${Link[inde]}"),
    );
  }
}
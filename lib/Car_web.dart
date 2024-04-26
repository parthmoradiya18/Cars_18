
import 'package:best_car_brands/Provider_Calss.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Car_web_ extends StatefulWidget {
  const Car_web_({Key? key}) : super(key: key);

  @override
  State<Car_web_> createState() => _Car_web_State();
}

class _Car_web_State extends State<Car_web_> {
  Provider_Calss? True;
  Provider_Calss? False;

  @override
  Widget build(BuildContext context) {
    False = Provider.of<Provider_Calss>(context, listen: false);
    True = Provider.of<Provider_Calss>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: False!.webViewController!),
      ),
    );
  }
}
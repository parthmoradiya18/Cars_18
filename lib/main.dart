
import 'package:best_car_brands/Best_Car.dart';
import 'package:best_car_brands/Car_web.dart';
import 'package:best_car_brands/Provider_Calss.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Provider_Calss(),)
        ],
        child: Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/' : (context) => Best_Car(),
                'Car' : (context) => Car_web_(),
              },
            );
          },
        ),
      )
  );
}
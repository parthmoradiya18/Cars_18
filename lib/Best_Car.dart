
import 'package:best_car_brands/Provider_Calss.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Best_Car extends StatefulWidget {
  const Best_Car({Key? key}) : super(key: key);

  @override
  State<Best_Car> createState() => _Best_CarState();
}

class _Best_CarState extends State<Best_Car> {
  Provider_Calss? True;
  Provider_Calss? False;

  @override
  Widget build(BuildContext context) {
    False = Provider.of<Provider_Calss>(context, listen: false);
    True = Provider.of<Provider_Calss>(context, listen: true);
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Best Car Brands",
            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          ),
        ),
        body:
        Container(
          child:
          GridView.builder(
            itemCount: False!.name.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'Car');
                  False!.loadurl(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2,color: Colors.black),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(alignment: Alignment.center,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Text(
                                  "${False!.name[index]}",
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),

                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

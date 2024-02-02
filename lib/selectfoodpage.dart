
import 'package:atmafoodapp/papoplrfood.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'demionsions.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Column(
        children: [
          Container(
            child: Container(
              height: 40, // Adjust as needed.

              margin: EdgeInsets.only(top: 45, bottom: 45),

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "PAKISTAN",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Lahore',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

                      //padding: EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        border: Border(),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  ]),
            ),
          ),
          Container(
            height:500,child:Center(child:Text('ATMA FOOD APP',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.green),)
          ),),
          ]
        ));



  }
}






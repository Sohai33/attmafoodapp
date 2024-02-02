
import 'package:atmafoodapp/selectfoodpage.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const googlemap());
}

class googlemap extends StatelessWidget {
  const googlemap({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 400,
              child: Container(
                height: 250,
                width: 380,
                //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

                //padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  border: Border(),
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          20.0), // Set the radius for the top-left corner
                      bottomRight: Radius.circular(20.0)),
                ),
                child: Container(
                  margin: EdgeInsets.only(right: 350, top: 1, bottom: 350),
                  child: Image(
                    image: AssetImage('images/img_4.png'),
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 100,
              right: 20,
              bottom: 0,
              child: Container(
                height: 200,
                width: 380,
                //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

                //padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  border: const Border(),
                  color: Colors.green.shade300,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(
                          40.0), // Set the radius for the top-left corner
                      topRight: Radius.circular(40.0)),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 120,
              right: 0,
              bottom: 0,
              child: Container(
                height: 250,
                width: 380,
                //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

                //padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  border: const Border(),
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(
                          40.0), // Set the radius for the top-left corner
                      topRight: Radius.circular(40.0)),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                Container(
                margin: EdgeInsets.only(left: 90.0,right: 90.0),
                child:ElevatedButton(

                  onPressed: () {
                    // ignore: non_constant_identifier_names
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Homepage()),
                    );
                  },

                  /*InkWell(
                      onTap: () {},
                      splashColor: Colors.greenAccent,
                      child: Container(
                        height: 50,
                        width: 250,
                        margin: EdgeInsets.only(left:70.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),*/
                  child: Center(
                    child: Text(
                      'OK, Select the Food!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Set border radius
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0), // Set padding
                  ),
                  // Makes the button circular
                  // Button background color
                ),
              ),
              /*Padding(
                      padding: const EdgeInsets.only(left: 30.0,top: 100,bottom: 20),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.greenAccent,
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'OK, Let’s go!',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),*/
              ],
            ),

                        /*Padding(
                          padding:
                              const EdgeInsets.only(right: 40.0, bottom: 30),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.greenAccent,
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  'Set home location',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),*/
                      ],
                    ),

                ),
              ),

            //Positioned(child: GoogleMap(
            //initialCameraPosition: CameraPosition(),
          ],
        ),
      ),
    );
  }
}

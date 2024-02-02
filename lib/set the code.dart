import 'package:flutter/material.dart';

void main() {
  runApp(const Codeset());
}

class Codeset extends StatelessWidget {
  const Codeset({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 20,
              top: 20,
              right: 20,
              bottom: 500,
              child: Container(
                height: 40,
                width: 30,
                decoration: BoxDecoration(
                  border: const Border(),
                  color: Colors.green.shade300,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 530,
              child: Container(
                width: 40,
                height: 50,
                decoration: const BoxDecoration(
                  border: Border(),
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 120,
              right: 0,
              bottom: 0,
              child: Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  border: Border(),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter your code",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CodeDigitField(),
                        CodeDigitField(),
                        CodeDigitField(),
                        CodeDigitField(),
                        // Add more CodeDigitField widgets as needed
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    ElevatedButton(
                      onPressed: () {
                        // Validate the code when the button is pressed
                        // You can access the entered code from CodeDigitField widgets
                        // For example, code validation can be done here.
                      },
                      child: Text('NEXT',style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30.0), // Set border radius
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 80.0, vertical: 10.0), // Set padding
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CodeDigitField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 8),
        ),
        maxLength: 1, // Allow only one digit per field
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
        onChanged: (value) {
          // You can handle changes in the digit input here if needed
        },
      ),
    );
  }
}

import 'package:atmafoodapp/set%20the%20code.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Forgetpassword());
}

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

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
              bottom: 550,
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
              bottom: 570,
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
              top: 220,
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
                      "Confirm your Email",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text.rich(
                        TextSpan(
                          text:
                          'Enter the e-mail address you have already confirmed.   ',
                          children: <TextSpan>[
                            TextSpan(text: 'We will then send you an e-mail with a'),
                            TextSpan(
                              text: ' link',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: ' to change your password.'),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                        fillColor: Color(0xffC7C5C9),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.green,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffC7C5C9),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffC7C5C9),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email.';
                        } else if (!isValidEmail(value!)) {
                          return 'Invalid email format. Please check your email.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                Container(
                  margin: EdgeInsets.only(left: 90.0, right: 90.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // ignore: non_constant_identifier_names
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Codeset()),
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
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Set border radius
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0), // Set padding
                    ),
                    // Makes the button circular
                    // Button background color
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

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }
}

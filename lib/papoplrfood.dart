import 'package:flutter/material.dart';

import 'demionsions.dart';


class Papolurfood extends StatelessWidget {
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";
  const Papolurfood({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowMore(text: description),
    );
  }

}





class ShowMore extends StatefulWidget {
  final String text;

  ShowMore({required this.text});
  @override
  _ShowMore createState() => _ShowMore();
}

class _ShowMore extends State<ShowMore> {
  /*bool isExpanded = false;

      // Your long text goes here.
      final String longText = '''
    This is a long paragraph of text. It can have multiple lines and provide detailed information about something.
    You can expand or collapse this text by clicking on the "Show More" button.
  ''';*/
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 50) {
      firstHalf = widget.text.substring(0, 50);
      secondHalf = widget.text.substring(50, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 900,
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
            ),
          ),
          Positioned(
            child: Container(
              height: 350,
              width: 450,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),

              //padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                border: Border(),
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        20.0), // Set the radius for the top-left corner
                    bottomRight: Radius.circular(20.0)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/img7.jpg'),
                ),
              ),
              child: Container(
                  margin: EdgeInsets.only(right: 350, top: 10, bottom: 350),
                  child: Image(
                    image: AssetImage('images/img.png'),
                    height: 20,
                    width: 20,
                  )),
            ),
          ),
          Positioned(
              top: 45,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 350, top: 10, bottom: 350),
                      child: Image(
                        image: AssetImage('images/img.png'),
                        height: 40,
                        width: 40,
                      )),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                  ),
                ],
              )),
          Positioned(
            left: 0,
            top: 300,
            right: 0,
            bottom: 0,
            child: Container(
              height: 450,
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
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zher khani ha ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: Demension.height20,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                5,
                                    (index) {
                                  return Icon(
                                    Icons.star,
                                    color: Colors.cyan,
                                    size: 15,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1287',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'comment',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Demension.height20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.yellow.shade700,
                            ),
                            Text(
                              'Normal',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Icon(
                              Icons.location_on_sharp,
                              color: Colors.orange.shade700,
                            ),
                            Text(
                              '1.7km',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Icon(
                              Icons.timer,
                              color: Colors.red.shade700,
                            ),
                            Text(
                              '32min',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Introduse',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          child: secondHalf.isEmpty
                              ? new Text(firstHalf)
                              : new Column(
                            children: <Widget>[
                              new Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf)),
                              new InkWell(
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    new Text(
                                      flag ? "show more" : "show less",
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    flag = !flag;
                                  });
                                },
                              ),
                            ],
                          ),
                          /* Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isExpanded = !isExpanded;
                                      });
                                    },
                                    child: Text(
                                      isExpanded ? longText : longText
                                          .substring(0, 100) + '...',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  if (!isExpanded)
                                    Text(
                                      'Show More',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              ),
                            ),*/
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30, right: 20, left: 20),
        decoration: BoxDecoration(
          border: Border(),
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                border: Border(),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove),
                  SizedBox(
                    width: 5,
                  ),
                  Text('0'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                border: Border(),
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text("\$10|Add to Cart", style: TextStyle(
                    color: Colors.white
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

}
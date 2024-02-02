/*import 'package:atmafoodapp/demionsions.dart';
import 'package:atmafoodapp/papoplrfood.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';



class pagebody extends StatefulWidget {
  const pagebody({super.key});

  @override
  State<pagebody> createState() => _pagebodyState();
}

class _pagebodyState extends State<pagebody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currpagevalue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Demension.pageviewcontainer;

  var screenWidth;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currpagevalue = pageController.page!;
      });
      pageController.page;
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white54,
          height: Demension.pageview,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildpageitem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currpagevalue.toInt(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Popular',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Food pairing',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 700,
          child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      // Perform navigation to the next page here.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Papolurfood(), // Replace with your next page widget
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border(),
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'images/img7.jpg'), // Replace with your image path
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              width: 250,
                              decoration: BoxDecoration(
                                border: Border(),
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              /*Container(
          height: 700,
          child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: (EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10)),
                  child: Row(
                    children: [
                      Container(

                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border(),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/img7.jpg'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border(),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),*/
                              child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nutriotion fruit meal in china ",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "with Chienes chareristics ",
                                        //overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
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
                                            width: 25,
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
                                            width: 25,
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
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ));
              }),
        ),
      ],
    );
  }
  Widget _buildpageitem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currpagevalue.floor()) {
      var currScale = 1 - (_currpagevalue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currpagevalue.floor() + 1) {
      var currScale = 1 - (_currpagevalue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currpagevalue.floor() - 1) {
      var currScale = 1 - (_currpagevalue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Demension.pageviewcontainer,
            margin: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              border: Border(),
              color: Colors.green,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/img7.jpg'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Demension.pageviewTextcontainer,
              margin: EdgeInsets.only(left: 25, right: 25, bottom: 30),
              decoration: BoxDecoration(
                  border: Border(),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: Offset(5, 5),
                    ),
                  ]),
              child: Container(
                margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chienes Side',
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }




}*/


import 'package:flutter/material.dart';

class shopping_cart extends StatefulWidget {
  final String? image;
  shopping_cart({this.image});

  _Shop createState() => _Shop();
}

class _Shop extends State<shopping_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Hero(
        tag: 'reds',
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: (Colors.grey[400])!,
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                          child: Icon(
                        Icons.favorite_border,
                        size: 20,
                      )),
                    )
                  ]),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.0)
                      ])),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Sneakes',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Size',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              child: Center(
                                  child: Text(
                                '40',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                '42',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                '44',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                '46',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,   
                          padding: EdgeInsets.symmetric(horizontal: 50),                      
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                              child: Center(child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold),)),
                        )
                      ]),
                ))
          ]),
        ),
      )),
    );
  }
}

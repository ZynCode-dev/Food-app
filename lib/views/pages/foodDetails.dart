import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons/hugeicons.dart';

class Fooddetails extends StatelessWidget {
  const Fooddetails({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    return Scaffold(
      backgroundColor: Color(0XFFF4F4F5),
      appBar: AppBar(
        backgroundColor: Color(0XFFF4F4F5),
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 16, top: 8, bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFFECF0F4),
          ),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedArrowLeft01,
              color: Color(0XFF181C2E),
              size: 20,
            ),
          ),
        ),
        title: Text(
          'Details',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0XFF181C2E),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _restaurantItems(args['path']),
            SizedBox(height: 20,),
            Container(
              width: 230,
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.transparent,
                border: Border.all(
                  width: 1,
                  color: Color.fromRGBO(235,235,235 ,1),
                ),
              ),
              padding: EdgeInsets.fromLTRB(16, 8, 16,8),
              child: Row(
                children: [
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedFavouriteCircle,
                    color: Colors.redAccent,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    args['restaurant'],
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                args['name'],
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF32343e),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                'Prosciutto e funghi is a pizza variety that is topped with tomato sauce.',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0XFF646982),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                //mainAxisAlignment: spa,
                children: [
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedStar,
                    color: Color(0XFFff7622),
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '4.7',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 40), // Space between rating and delivery icon
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedShippingTruck01,
                    color: Color(0XFFff7622),
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Free',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 40), // Space between delivery and time
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedTimer01,
                    color: Color(0XFFff7622),
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '20 min',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  Text(
                    'SIZE : ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF646982),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 40, // Adjust size as needed
                    height: 40, // Adjust size as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      color: Color(0xFFF0F5FA), // Soft orange color
                    ),
                    child: Center(
                      child: Text(
                        '10"',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF40414F),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 40, // Adjust size as needed
                    height: 40, // Adjust size as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      color: Color(0xFFF58D1D), // Soft orange color
                    ),
                    child: Center(
                      child: Text(
                        '14"',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 40, // Adjust size as needed
                    height: 40, // Adjust size as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      color: Color(0xFFF0F5FA), // Soft orange color
                    ),
                    child: Center(
                      child: Text(
                        '16"',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF40414F),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                'INGREDIENTS',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0XFF646982),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40, // Adjust size as needed
                  height: 40, // Adjust size as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make the container circular
                    color: Color(0xFFF1DFD8), // Soft orange color
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/images/salt.png',
                      color: Color(0xFFEC6636),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                Container(
                  width: 40, // Adjust size as needed
                  height: 40, // Adjust size as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make the container circular
                    color: Color(0xFFF1DFD8), // Soft orange color
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/images/chicken.png',
                      color: Color(0xFFEC6636),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                Container(
                  width: 40, // Adjust size as needed
                  height: 40, // Adjust size as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make the container circular
                    color: Color(0xFFF1DFD8), // Soft orange color
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/images/onion.png',
                      color: Color(0xFFEC6636),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                Container(
                  width: 40, // Adjust size as needed
                  height: 40, // Adjust size as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make the container circular
                    color: Color(0xFFF1DFD8), // Soft orange color
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/images/garlic.png',
                      color: Color(0xFFEC6636),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                Container(
                  width: 40, // Adjust size as needed
                  height: 40, // Adjust size as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make the container circular
                    color: Color(0xFFF1DFD8), // Soft orange color
                  ),
                  child: Center(
                    child: Image.asset(
                      'asset/images/pepper.png',
                      color: Color(0xFFEC6636),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),

              ],
            ),
            _paySection(),
          ],
        ),
      ),
    );
  }



  Widget _restaurantItems(String path) {
    return Container(
        height: 200,
        margin: EdgeInsets.only(left: 20,right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,

        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 45,
                  //color: Colors.pinkAccent,
                ),
                Container(
                  height: 155,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffffbd6c),
                        Color(0xFFffa35a),
                        Color(0xffffbf6d),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 40, // Adjust size as needed
                        height: 40, // Adjust size as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Make the container circular
                          color: Color(0xffffcb88), // Soft orange color
                        ),
                        child: Center(
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedFavourite,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            ),
            Positioned(
              //top: 15,
              child: Image.asset(
                path,
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
    );
  }

  Widget _paySection() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFFECF0F4),
        //color: Colors.pink,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$32',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF121223),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 25, // Adjust size as needed
                      height: 25, // Adjust size as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Make the container circular
                        color: Color(0xff41414f), // Soft orange color
                      ),
                      child: Center(
                        child: HugeIcon(
                          icon: HugeIcons.strokeRoundedRemove01,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 25, // Adjust size as needed
                      height: 25, // Adjust size as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Make the container circular
                        color: Color(0xff41414f), // Soft orange color
                      ),
                      child: Center(
                        child: HugeIcon(
                          icon: HugeIcons.strokeRoundedAdd01,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30), // Spacing between quantity selector and add to cart button
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: (){},
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 15,bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffff7622),
              ),
              child: Text(
                'ADD TO CART',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}

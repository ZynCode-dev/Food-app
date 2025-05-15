import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons/hugeicons.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF4F4F5),
      appBar: AppBar(
        backgroundColor: Color(0XFFF4F4F5),
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 16, top: 8, bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0XFFECF0F4),
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
          'Search',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0XFF181C2E),
          ),
        ),
        actionsPadding: EdgeInsets.only(right: 20),
        actions: [
          _badgeIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            _myInput(),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                'Recent Keywords',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF32343e),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 20,),
                  _customContainer('Sandwich'),
                  SizedBox(width: 15,),
                  _customContainer('Hot Dog'),
                  SizedBox(width: 15,),
                  _customContainer('Burger'),
                  SizedBox(width: 15,),
                  _customContainer('Pizza'),
                  SizedBox(width: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                'Suggested Restaurants',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF32343e),
                ),
              ),
            ),
            SizedBox(height: 20,),
            _restaurantCard('asset/images/Restau1.jpg','Pansi Restaurant','4.5'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/Restau2.jpg','Pansi Restaurant','4.5'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/Restau3.jpg','Pansi Restaurant','4.5'),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                'Popular Fast Food',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF32343e),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _restaurantItems(context,'asset/images/platoPizza.png','European Pizza','Uttora Coffee House'),
                _restaurantItems(context,'asset/images/FourCheesePizza.png','Buffalo Pizza','Cofenio Coffee Club'),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Widget _badgeIcon() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        // Main circle with dark background
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(0XFF181C2E), // Dark blue background
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),

        // Badge with count
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: Color(0XFFff7622),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '2',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
  Widget _myInput(){
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      height: 50,
      decoration: BoxDecoration(
        color: Color(0XFFECF0F4), // Couleur de fond
        borderRadius: BorderRadius.circular(12), // Arrondi
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Color(0XFF676767),
            fontSize: 16,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 12, right: 8),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedSearch01,
              color: Color(0XFFA0A5BA),
              size: 20,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(left: 8, right: 12),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedCancelCircle,
              color: Color(0XFFA0A5BA),
              size: 20,
            ),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14), // Correction de l'alignement
        ),
        style: TextStyle(
          color: Color(0XFF676767),
          fontSize: 16,
        ),
        cursorColor: Color(0XFF676767),

      ),
    );
  }
  Widget _customContainer(String title) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.transparent,
          border: Border.all(
            width: 1,
            color: Color.fromRGBO(235,235,235 ,1),
          )
        ),
        padding: EdgeInsets.fromLTRB(16, 8, 16,8),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,

          ),
        )
      ),
    );
  }
  Widget _restaurantCard(String path,String title, String rate) {
    return Container(
      padding: EdgeInsets.only(top: 8,bottom: 8),
      margin: EdgeInsets.only(left: 20,right: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          // Avatar image
          Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
            ),
            clipBehavior: Clip.hardEdge, // Pour que l'image suive les coins arrondis
            child: Image.asset(
              path,
              fit: BoxFit.cover, // Utiliser 'cover' pour garder les proportions
            ),
          ),

          SizedBox(width: 16), // Space between avatar and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Restaurant name
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFF32343e),
                  ),
                ),
                SizedBox(height: 4), // Space between name and rating
                Row(
                  children: [
                    Icon(
                      HugeIcons.strokeRoundedStar,
                      color: Color(0XFFff7622),
                      size: 16,
                    ),
                    SizedBox(width: 4), // Space between star icon and rating text
                    Text(
                      rate,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _restaurantItems(BuildContext context ,String path, String name, String restaurant) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
        onTap: ()async{
          await Get.toNamed('/details', arguments: {
            'path'        : path,
            'name'        : name,
            'restaurant'  : restaurant,
          });
        },
      child: Container(
        height: 195,
        width: MediaQuery.of(context).size.width* 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          //color: Colors.yellowAccent,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 65,
                  //color: Colors.pinkAccent,
                ),
                Container(
                  height: 130,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF181C2E),
                        ),
                      ),
                      Text(
                        restaurant,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0XFF646982),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 15,
              child: Image.asset(
                path,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

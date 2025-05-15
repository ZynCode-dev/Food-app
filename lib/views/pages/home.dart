import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons/hugeicons.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<Map<String, dynamic>> foodCategories = [
    {
      "category": "Burgers",
      "items": [
        {
          "name": "Classic Cheeseburger",
          "restaurant": "Burger Bistro",
          "price": "\$40",
          "image": "asset/images/ClassicCheeseburge.png"
        },
        {
          "name": "Smokin' Burger",
          "restaurant": "Cofenio Restaurant",
          "price": "\$60",
          "image": "asset/images/SmokinBurger.png"
        },
        {
          "name": "Buffalo Burgers",
          "restaurant": "Koji Firm Kitchen",
          "price": "\$75",
          "image": "asset/images/BuffaloBurgers.png"
        },
        {
          "name": "Bullseye Burgers",
          "restaurant": "Kobab Restaurant",
          "price": "\$94",
          "image": "asset/images/BullseyeBurgers.png"
        }
      ]
    },
    {
      "category": "Hotdogs",
      "items": [
        {
          "name": "New York Hotdog",
          "restaurant": "Hotdog Haven",
          "price": "\$30",
          "image": "asset/images/NewYorkHotdog.png"
        },
        {
          "name": "Chili Cheese Dog",
          "restaurant": "The Sausage Shack",
          "price": "\$50",
          "image": "asset/images/ChiliCheeseDog.png"
        },
        {
          "name": "Classic Hotdog",
          "restaurant": "The Dog House",
          "price": "\$40",
          "image": "asset/images/ClassicHotdog.png"
        },
        {
          "name": "Loaded Bacon Dog",
          "restaurant": "Frank's Grill",
          "price": "\$60",
          "image": "asset/images/LoadedBaconDog.png"
        }
      ]
    },
    {
      "category": "Pizzas",
      "items": [
        {
          "name": "Margherita Pizza",
          "restaurant": "Pizza Palace",
          "price": "\$80",
          "image": "asset/images/MargheritaPizza.png"
        },
        {
          "name": "Pepperoni Pizza",
          "restaurant": "Pizza Point",
          "price": "\$90",
          "image": "asset/images/PepperoniPizza.png"
        },
        {
          "name": "BBQ Chicken Pizza",
          "restaurant": "Smoky Pizzeria",
          "price": "\$100",
          "image": "asset/images/BBQChickenPizza.png"
        },
        {
          "name": "Four Cheese Pizza",
          "restaurant": "Cheese Factory",
          "price": "\$120",
          "image": "asset/images/FourCheesePizza.png"
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF4F4F5),
      //backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Color(0XFFF4F4F5),
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 16, top: 8, bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0XFFECF0F4),
          ),
          child: HugeIcon(
            icon: HugeIcons.strokeRoundedMenu02,
            color: Color(0XFF181C2E),
            size: 20,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DELIVER TO',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Row(
              children: [
                Text(
                  'Halal Lab office',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0XFF676767),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0XFF181C2E),
                  size: 25.0,
                ),
              ],
            ),
          ],
        ),
        //actionsPadding: EdgeInsets.all(20),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: ()async{
              await Get.toNamed('/search');
            },
            child: Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0XFF181C2E),
              ),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedSearch01,
                color: Color(0XFFECF0F4),
                size: 20,
              ),

            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                children: [
                  Text(
                    'Hey Halal, ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF181C2E),
                    ),
                  ),
                  Text(
                    'Good Afternoon!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF181C2E),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            _myInput(),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Categories',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0XFF181C2E),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFF181C2E),

                        ),
                      ),
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedArrowRight01,
                        color: Color(0XFFA0A5BA),
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 20,),
                  _customContainer(Color(0xFFFFD27C),'All','asset/images/flame.png',false),
                  SizedBox(width: 15,),
                  _customContainer(Color(0xFFFFFFFF),'Hot Dog','asset/images/hot-dog.png',true,foodCategories[1]["items"]),
                  SizedBox(width: 15,),
                  _customContainer(Color(0xFFFFFFFF),'Burger','asset/images/burger.png',true,foodCategories[0]["items"]),
                  SizedBox(width: 15,),
                  _customContainer(Color(0xFFFFFFFF),'Pizza','asset/images/pizza.png',true,foodCategories[2]["items"]),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Open Restaurants',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0XFF181C2E),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF181C2E),

                        ),
                      ),
                      HugeIcon(
                        icon: HugeIcons.strokeRoundedArrowRight01,
                        color: Color(0XFFA0A5BA),
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            _restaurantCard('asset/images/platOne.jpg','Rose Garden Restaurant','Burger - Chicken - Rice - Wings','4.5','20 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platTwo.jpg','Mediterranean Delights','Hummus - Shawarma - Falafel - Kebab','4.7','20-30 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platTree.jpg','Pasta Palace','Spaghetti - Lasagna - Ravioli - Fettuccine','4.6','25 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platFour.jpg','Spicy Indian Bites','Curry - Biryani - Samosa - Naan','4.8','40-50 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platFive.jpg','Sushi Express','Sushi - Sashimi - Tempura - Ramen','4.9','35-45 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platSix.jpg','Mexican Fiesta','Tacos - Burritos - Quesadillas - Nachos','4.4','20-30 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platSeven.jpg','Pizza House','Margherita - Pepperoni - Veggie - BBQ Chicken','4.3','15-25 min'),
            SizedBox(height: 10,),
          ],
        ),
      ),
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
          hintText: 'Search dishes, restaurants',
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

  Widget _customContainer(Color bgClr,String title, String path,bool isClickable,[List<Map<String, dynamic>>? foodItems]) {
    return !isClickable
        ? Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: bgClr,
          ),
          padding: EdgeInsets.fromLTRB(8, 8, 16,8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0XFFF4F4F5),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    path,
                  ),
                ),
                SizedBox(width: 8), // Space between icon and text
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        : InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: ()async{
            await Get.toNamed('/foodChosen',arguments: {
              'title' : title,
              'foodItems' : foodItems,

            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: bgClr,
            ),
            padding: EdgeInsets.fromLTRB(8, 8, 16,8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0XFFF4F4F5),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    path,
                  ),
            ),
                SizedBox(width: 8), // Space between icon and text
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
  }

  Widget _restaurantCard(String path,String title,String desc,String rate,String temp) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              path,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0XFF181C2E),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFFA0A5BA),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    // Rating
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      rate,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 16), // Space between rating and delivery icon
                    Icon(
                      Icons.local_shipping,
                      color: Colors.orange,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Free',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 16), // Space between delivery and time
                    Icon(
                      Icons.timer,
                      color: Colors.orange,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      temp,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )

          // Restaurant name

        ],
      ),
    );
  }

}

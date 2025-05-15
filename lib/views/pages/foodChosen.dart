import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodChosen extends StatelessWidget {
  const FoodChosen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final List<Map<String, dynamic>> foodItems = args['foodItems'];
    final String title = args['title'];
    return Scaffold(
      backgroundColor: Color(0XFFF4F4F5),
      //backgroundColor: Colors.pinkAccent,
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
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5), // Light gray background
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white12),
          ),
          child: Row(
            children: [
              // Text
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF181C2E),
                ),
              ),
              SizedBox(width: 5), // Space between text and dropdown icon
              // Dropdown icon
              Icon(
                Icons.arrow_drop_down,
                color: Color(0XFFF58D1D),
                size: 24,
              ),
            ],
          ),
        ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular $title",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF181C2E),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  return _restaurantItems(context, foodItems[index]);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                'Open Restaurants',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0XFF181C2E),
                ),
              ),
            ),
            SizedBox(height: 20,),
            _restaurantCard('asset/images/platTree.jpg','Pasta Palace','Spaghetti - Lasagna - Ravioli - Fettuccine','4.6','25 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platTwo.jpg','Mediterranean Delights','Hummus - Shawarma - Falafel - Kebab','4.7','20-30 min'),
            SizedBox(height: 10,),
            _restaurantCard('asset/images/platOne.jpg','Rose Garden Restaurant','Burger - Chicken - Rice - Wings','4.5','20 min'),
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

  Widget _restaurantItems(BuildContext context, Map<String, dynamic> foodItem) {
    return Container(
      //width: MediaQuery.of(context).size.width * 0.45,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 75,
              ),
              Container(
                height: 150,
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
                      foodItem["name"],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF181C2E),
                      ),
                    ),
                    Text(
                      foodItem["restaurant"],
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0XFF646982),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          foodItem["price"],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF181C2E),
                          ),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0XFFF58D1D),
                          child: Icon(
                            HugeIcons.strokeRoundedAdd01,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 30,
            right: 30,
            child: Image.asset(
              foodItem["image"],
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ],
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
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedStar,
                      color: Color(0XFFff7622),
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
                    SizedBox(width: 16), // Space between delivery and time
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedTimer01,
                      color: Color(0XFFff7622),
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
        ],
      ),
    );
  }
}

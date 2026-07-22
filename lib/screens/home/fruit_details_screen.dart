import 'package:flutter/material.dart';

class FruitDetailsScreen extends StatelessWidget {
  const FruitDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xffC4F594).withValues(alpha: 0.5),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(150),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back, size: 30),
                    Icon(Icons.favorite_outline, size: 30),
                  ],
                ),

                Image.asset(
                  "assets/apples_info.png",
                  fit: BoxFit.cover,
                  height: 300,
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Apple",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.remove_circle, color: Colors.green),
                        Text("1kg"),
                        Icon(Icons.add_circle, color: Colors.green),
                      ],
                    ),
                  ],
                ),
                Text("Fruits"),
                Row(
                  children: [
                    Text("4.5", style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text(
                      "(89 reviews)",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ],
                ),
                Text(
                  "₹180.00",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),

                SizedBox(height: 10),

                Text(
                  "Apple Mountain works as a seller for many apple growers of apple. apple are easy to spot in your produce aisle. They are just like regular apple, but they will usually have a few more scars on...",
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
                Text("ReadMore", style: TextStyle(color: Colors.green)),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
}

import 'package:flutter/material.dart';

class FruitDetailsScreen extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final String weight;
  final String description;

  const FruitDetailsScreen({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.weight,
    required this.description,
  });

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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, size: 30),
                    ),
                    Icon(Icons.favorite_outline, size: 30),
                  ],
                ),

                Image.asset(image, fit: BoxFit.cover, height: 300),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.remove_circle, color: Colors.green),
                        Text(weight),
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
                  price,
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
                  description,
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.green,
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.green,
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

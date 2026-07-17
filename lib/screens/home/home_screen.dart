import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/fruits_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Home"),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Image.asset("assets/menu_bar.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/avatar.png"),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Bibek!", style: TextStyle(fontSize: 16)),
              Text(
                "What are you looking for ?",
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withValues(alpha: 0.15),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.menu),
                  hintText: "Search keywords..",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0xff86C649),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/offer.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Catagories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              SizedBox(
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fruitsData.length,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(fruitsData[index]['image']),
                              ),
                            ),
                          ),
                          Text(fruitsData[index]['name']),
                        ],
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Featured Product",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 50,
                                color: Colors.green,
                                child: Center(
                                  child: Text(
                                    productData[index]['discount'],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),

                              Icon(Icons.favorite_outline),
                            ],
                          ),
                        ),
                        Image.asset(productData[index]['image'], height: 100),
                        Text(
                          productData[index]['price'],
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          productData[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          productData[index]['weight'],
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

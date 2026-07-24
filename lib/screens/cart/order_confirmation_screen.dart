import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text(
          "Order Confirmation",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, size: 32),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "Naya Gauu 15, Pokhara",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
                Text("Edit", style: TextStyle(color: Colors.green)),
              ],
            ),

            Divider(color: Colors.black, thickness: 1),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.call, size: 32),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "9869******",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
                Text("Edit", style: TextStyle(color: Colors.green)),
              ],
            ),

            Divider(color: Colors.black, thickness: 1),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.mail, size: 32),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "giribibek01@gmail.com",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
                Text("Edit", style: TextStyle(color: Colors.green)),
              ],
            ),

            SizedBox(height: 40),

            Text(
              "Abour Order",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_shipping, size: 32),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [Text("Select Method"), Icon(Icons.chevron_right)],
                ),
              ],
            ),

            Divider(color: Colors.black, thickness: 1),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.payment, size: 32),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "Payment Method",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.chevron_right),
              ],
            ),

            Divider(color: Colors.black, thickness: 1),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.money, size: 32),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Text(
                          "Total Cost",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("₹160.00", style: TextStyle(color: Colors.green)),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ],
            ),

            SizedBox(height: 100),

            Center(
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: 4,
                      spreadRadius: 0.5,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Confirm Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

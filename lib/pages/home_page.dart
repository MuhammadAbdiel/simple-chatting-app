import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';
import 'package:flutter_chatty/widget/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/g1.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: title,
                      ),
                      ChatTile(
                        image: 'assets/images/g2.png',
                        name: 'Joshuer',
                        message: "Sorry, you're not my ty...",
                        time: 'Now',
                        read: false,
                      ),
                      ChatTile(
                        image: 'assets/images/g3.png',
                        name: 'Gabriella',
                        message: "I saw it clearly and mig...",
                        time: '2:30',
                        read: true,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: title,
                      ),
                      ChatTile(
                        image: 'assets/images/img1.png',
                        name: 'Jakarta Fair',
                        message: "Why does everyone ca...",
                        time: '11:11',
                        read: true,
                      ),
                      ChatTile(
                        image: 'assets/images/img2.png',
                        name: 'Angga',
                        message: "Here here we can go...",
                        time: '7:11',
                        read: false,
                      ),
                      ChatTile(
                        image: 'assets/images/img3.png',
                        name: 'Bentley',
                        message: "The car which does not...",
                        time: '7:11',
                        read: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

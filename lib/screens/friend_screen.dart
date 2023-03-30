import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/profile_card.dart';
import 'package:flutter_kakao/models/user.dart';

class FrientScreen extends StatelessWidget {
  const FrientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("친구"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          ProfileCard(user: me),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("친구"),
                SizedBox(width: 6),
                Text("${friends.length}"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (context, index) => ProfileCard(user: friends[index]),
            ),
          )
        ],
      ),
    );
  }
}

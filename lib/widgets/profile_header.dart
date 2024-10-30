import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueAccent,
      child: const Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150',
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Your Profile',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

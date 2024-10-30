import 'package:flutter/material.dart';
import 'package:lecture_7/widgets/my_container_2_widget.dart';
import 'package:lecture_7/widgets/my_container_widget.dart';
import 'package:lecture_7/widgets/profile_details.dart';
import 'package:lecture_7/widgets/profile_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "John Doe";
  String email = "johndoe@example.com";

  void updateProfile(String newName, String newEmail) {
    setState(() {
      name = newName;
      email = newEmail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const ProfileHeader(),
                ProfileDetails(
                  name: name,
                  email: email,
                  onSave: updateProfile,
                ),
                const MyContainerWidget(
                  text: 'Example!',
                  color: Colors.cyanAccent,
                ),
                _buildTextWidget('My text!'),
                const SizedBox(
                  height: 10,
                ),
                const MyContainerWidget(
                  text: 'Example2!',
                  color: Colors.pink,
                ),
                MyContainer2Widget(
                  text: name,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextWidget(String text) {
    return Text(text);
  }
}

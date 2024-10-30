import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  final String name;
  final String email;
  final Function(String, String) onSave;

  const ProfileDetails({
    super.key,
    required this.name,
    required this.email,
    required this.onSave,
  });

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _emailController = TextEditingController(text: widget.email);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              widget.onSave(
                _nameController.text,
                _emailController.text,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Changes saved!',
                  ),
                ),
              );
            },
            child: const Text(
              'Save Changes',
            ),
          ),
        ],
      ),
    );
  }
}

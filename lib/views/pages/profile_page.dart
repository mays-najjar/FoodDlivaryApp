import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50.0),
              Center(
                child: Container(
                  width: 300,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://i.pinimg.com/736x/9d/0c/dd/9d0cdd6ec0f42e148ecfa1622ea8e261.jpg',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Mays Khalil',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30, child: VerticalDivider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('History of Orders'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.credit_card),
                title: const Text('Card Details'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

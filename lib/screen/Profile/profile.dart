import 'package:flutter/material.dart';
import 'package:price_wise/screen/Profile/profile_card.dart';
import 'package:price_wise/screen/Profile/edit_profile_screen.dart';
import 'package:price_wise/screen/Profile/profile_settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'), centerTitle: true),
      body: Column(
        children: [
          const SizedBox(height: 24),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
          ),
          const SizedBox(height: 12),
          const Text('Jane Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Text('jane.doe@email.com',
              style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 24),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                ProfileOptionCard(
                  icon: Icons.settings,
                  title: 'Settings',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SettingsScreen()),
                    );
                  },
                ),
                ProfileOptionCard(
                  icon: Icons.edit,
                  title: 'Edit Account',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const EditProfileScreen()),
                    );
                  },
                ),
                ProfileOptionCard(
                  icon: Icons.logout,
                  title: 'Log Out',
                  color: Colors.redAccent,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Log Out"),
                        content:
                            const Text("Are you sure you want to log out?"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Logged out successfully."),
                                ),
                              );
                            },
                            child: const Text("Log Out"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


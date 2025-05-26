import 'package:flutter/material.dart';
<<<<<<< HEAD
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

=======
import 'package:price_wise/screen/Profile/user.dart';
import 'package:price_wise/screen/Profile/user_preference.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User _user;

  final bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  // Load the user data from preferences
  void _loadUser() async {
    final user = await UserPreferences.loadUser();
    if (user != null) {
      setState(() {
        _user = user;
      });
    } else {
      setState(() {
        _user = User(
          name: 'John Doe',
          username: 'johndoe123',
          email: 'john.doe@example.com',
          socialLink: 'https://www.instagram.com/johndoe',
        );
      });
    }
  }

  // Save the user data to preferences
  void _saveUser() {
    UserPreferences.saveUser(_user);
  }

  void _editAccount() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Account'),
          content: Column(
            children: [
              TextField(
                controller: TextEditingController(text: _user.name),
                onChanged: (value) => _user.name = value,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: TextEditingController(text: _user.username),
                onChanged: (value) => _user.username = value,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: TextEditingController(text: _user.email),
                onChanged: (value) => _user.email = value,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: TextEditingController(text: _user.socialLink),
                onChanged: (value) => _user.socialLink = value,
                decoration: const InputDecoration(labelText: 'Social Link'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                _saveUser();
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _logout() {
    // Clear user data
    setState(() {
      _user = User(name: '', username: '', email: '', socialLink: '');
    });
    UserPreferences.saveUser(_user); // Save the cleared user
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkMode ? Colors.black87 : Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: _isDarkMode ? Colors.blueAccent : Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
          children: [
            CircleAvatar(radius: 60, backgroundColor: Colors.blue),
            const SizedBox(height: 10),
            Center(
              child: Text(
                _user.name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: _isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Text(
                '@${_user.username}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: _isDarkMode ? Colors.white60 : Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Account Info
            _buildListTile(
              icon: Icons.edit,
              title: 'Edit Account',
              onTap: _editAccount,
            ),
            const Divider(),

            // Settings Button
            _buildListTile(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {},
            ),
            const Divider(),

            // Log Out Button
            _buildListTile(
              icon: Icons.logout,
              title: 'Log Out',
              onTap: _logout,
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({required IconData icon, required String title, required VoidCallback onTap, Color iconColor = Colors.blue}) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(
        title,
        style: TextStyle(
          color: _isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      onTap: onTap,
    );
  }
}
>>>>>>> 79de6ee (Update repository with latest changes)

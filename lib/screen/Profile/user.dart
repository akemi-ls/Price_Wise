class User {
  String name;
  String username;
  String email;
  String socialLink;

  User({
    required this.name,
    required this.username,
    required this.email,
    required this.socialLink,
  });

  // Convert a User object into a map (for saving to SharedPreferences)
  Map<String, String> toMap() {
    return {
      'name': name,
      'username': username,
      'email': email,
      'socialLink': socialLink,
    };
  }

  // Convert a map into a User object
  factory User.fromMap(Map<String, String> map) {
    return User(
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      socialLink: map['socialLink'] ?? '',
    );
  }
}

import 'package:flutter/material.dart';
<<<<<<< HEAD

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);
=======
import 'package:price_wise/screen/Home/main_screen.dart';
import 'package:price_wise/screen/SignUp/signup_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});
>>>>>>> 79de6ee (Update repository with latest changes)

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
<<<<<<< HEAD
=======
          // Gradient background
>>>>>>> 79de6ee (Update repository with latest changes)
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
<<<<<<< HEAD
              color: Colors.blue,
=======
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple], // Gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
>>>>>>> 79de6ee (Update repository with latest changes)
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                "Welcome!!\nLog In",
                style: TextStyle(
<<<<<<< HEAD
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
=======
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Form container with rounded corners
>>>>>>> 79de6ee (Update repository with latest changes)
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
<<<<<<< HEAD
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
=======
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
>>>>>>> 79de6ee (Update repository with latest changes)
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.mail_outline, color: Colors.grey),
                          label: Text(
                            "Email",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          label: const Text(
                            "Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
<<<<<<< HEAD
                      const SizedBox(height: 60),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // Frontend-only: just print to console
                            print("Email: ${emailController.text}");
                            print("Password: ${passwordController.text}");
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Login Successful!")),
=======
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            print("Email: ${emailController.text}");
                            print("Password: ${passwordController.text}");
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const MainScreen()),
>>>>>>> 79de6ee (Update repository with latest changes)
                            );
                          }
                        },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
<<<<<<< HEAD
                      const SizedBox(height: 70),
=======
                      const SizedBox(height: 20),
                      // Google Sign-In Button
                      GestureDetector(
                        onTap: () {
                          print("Google Sign-In tapped");
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MainScreen()),
                          );
                        },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("images/google.png"),
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Sign in with Google",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
>>>>>>> 79de6ee (Update repository with latest changes)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
<<<<<<< HEAD
                                // Navigate to sign-up page if needed
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Navigate to Sign Up")),
=======
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
>>>>>>> 79de6ee (Update repository with latest changes)
                                );
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
<<<<<<< HEAD
                      )
=======
                      ),
>>>>>>> 79de6ee (Update repository with latest changes)
                    ],
                  ),
                ),
              ),
            ),
<<<<<<< HEAD
          )
=======
          ),
>>>>>>> 79de6ee (Update repository with latest changes)
        ],
      ),
    );
  }
}

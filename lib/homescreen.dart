import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';
import 'user.dart';

class Homescreen extends StatefulWidget {
  final User user;
  const Homescreen({super.key, required this.user});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(title: const Text("Homestay Raya")),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/homescreen.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: const [
                        Text(
                            "welcome to our humble homestay app, please do register if you are new or login if you are our user already. thank you and have a good day.",
                            style: TextStyle(
                                color: Color.fromARGB(255, 161, 93, 4),
                                fontSize: 30,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("AppMaking.co",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  accountEmail: Text("sundar@appmaking.co",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/teddy.jpg"),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/drawerhead.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Register'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (content) => const RegistrationScreen()));
                  },
                ),
                ListTile(
                  title: const Text('Login'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (content) => const LoginScreen(
                                  user: null,
                                )));
                  },
                ),
              ],
            ),
          )),
    );
  }
}

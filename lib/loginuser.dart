import 'package:flutter/material.dart';

import 'package:homestayass2last/homescreen.dart';
import 'user.dart';

class LoginUser extends StatefulWidget {
  final User user;
  const LoginUser({super.key, required this.user});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(title: const Text("User Details")),
          body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homestay.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 252, 250, 255)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                                "Welcome,\n" +
                                    widget.user.name.toString() +
                                    "\n" +
                                    widget.user.email.toString(),
                                style: TextStyle(
                                    color: Color.fromARGB(255, 161, 93, 4),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            minWidth: 115,
                            height: 50,
                            elevation: 10,
                            onPressed: _homeagain,
                            color: Theme.of(context).colorScheme.primary,
                            child: const Text('Home',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 248, 246, 246))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }

  void _homeagain() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (content) => Homescreen(
                  user: widget.user,
                )));
  }
}

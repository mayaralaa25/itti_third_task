import 'package:flutter/material.dart';
import 'package:iti_third_task/screens/wallet_total.dart';
import 'package:iti_third_task/widgets/custom_row.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(5, 16, 84, 1),
              Color.fromRGBO(2, 4, 64, 1),
              Color.fromRGBO(12, 35, 119, 1),
            ])),
        child: Padding(
          padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WalletTotal()));
                    },
                    child: const Chip(
                      label: Text('WALLET TOTAL',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      backgroundColor: Color.fromARGB(230, 32, 30, 150),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Chip(
                    label: Text(
                      'CHAT',
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    leftCustomRow(
                      nameOfButton: "Hey Edwin , how may I help you ?",
                      fontSize: 16,
                      buttonWidth: 250,
                    ),
                    rightCustomRow(
                      nameOfButton: "I'd like to invest in IOTA",
                      fontSize: 16,
                      buttonWidth: 210,
                    ),
                    leftCustomRow(
                      nameOfButton: "How much would you like to invest ?",
                      fontSize: 16,
                      buttonWidth: 275,
                    ),
                    rightCustomRow(
                      nameOfButton: "\$ 5,250.00",
                      fontSize: 16,
                      buttonWidth: 110,
                    ),
                    leftCustomRow(
                        nameOfButton:
                            "Would you like me to send you an analysis on IOTA as well ?",
                        fontSize: 16,
                        buttonWidth: 255,
                        buttonHeight: 70),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        "INVEST",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.lightBlueAccent[400],
                          child: Image.asset(
                            "assets/transfer.png",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "TRANSFER",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue[800],
                          child: Icon(
                            Icons.leaderboard_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        "DATA",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff4e3bb6),
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        "ALERTS",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 10,
                thickness: 3,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff212c7c),
                    child: Center(
                          child: Icon(
                            Icons.expand_less,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 40,
                      //width: 250,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          backgroundColor: Color(0xff212c7c),
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff212c7c),
                          hintText: "Your message...",
                          hintStyle: TextStyle(color: Colors.white24),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.blue,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iti_third_task/screens/chat.dart';

import 'home_page.dart';

class CurrencyHome extends StatefulWidget {
  const CurrencyHome({Key? key}) : super(key: key);

  @override
  State<CurrencyHome> createState() => _CurrencyHomeState();
}

class _CurrencyHomeState extends State<CurrencyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(12, 34, 116, 1),
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
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
                    },
                    child: const Chip(
                      label: Text('WALLET TOTAL'),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20,),
                  const Chip(
                    label: Text('CHAT',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    backgroundColor: Color.fromRGBO(33, 48, 119, 1),
                  ),
                  // const Spacer(),
                  // const Icon(Icons.add, size: 36, color: Colors.white),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  ],
              ),
               ListView(
                 shrinkWrap: true,
                 children: [

                 ],
               ),
             ],
           ),
         ),
      ),
    );
  }
}

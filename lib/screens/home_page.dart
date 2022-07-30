import 'package:flutter/material.dart';
import '../widgets/main_button.dart';
import '../widgets/square_unit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Computer science',
          style:
              TextStyle(color: Colors.white, letterSpacing: 12, wordSpacing: 0),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart)],
      ),
      body: Column(children: [
        Row(
          children: [
            const SquareUnit(
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            ),
            SquareUnit(
                decoration: BoxDecoration(color: Colors.amber, boxShadow: [
              BoxShadow(
                  color: Colors.teal.withOpacity(0.6),
                  offset: const Offset(2, 5),
                  spreadRadius: 2,
                  blurRadius: 12)
            ])),
            const SquareUnit(
                decoration: BoxDecoration(
              color: Colors.blue,
            )),
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainButton(
                label: 'increase',
                icon: const Icon(Icons.add),
                onTap: () {
                  setState(() {
                    myNumber++;
                  });
                  print(myNumber);
                },
              ),
              Text(
                myNumber.toString(),
                style: const TextStyle(fontSize: 29),
              ),
              MainButton(
                label: 'decrease',
                icon: const Icon(Icons.remove),
                onTap: () {
                  setState(() {
                    myNumber--;
                  });
                },
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 16,
        ),

        Container(
          padding: const EdgeInsets.all(16),
          width: 320,
          height: 300,
          color: Colors.blue,
          child: Stack(children:  const [
            Align(
              alignment:Alignment.topRight ,
              child: Icon(Icons.remove_circle_outlined))


          ]),
        )


        // Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Oranges_-_whole-halved-segment.jpg/1200px-Oranges_-_whole-halved-segment.jpg'),
        // Image.asset('assets/images/image1.jpg',scale: 4,)
      ]),
    );
  }
}
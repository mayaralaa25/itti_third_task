import 'package:flutter/material.dart';
import 'package:iti_third_task/screens/chat.dart';

class WalletTotal extends StatelessWidget {
  const WalletTotal({Key? key}) : super(key: key);

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
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
            child: Column(
              children: [
                const UpperTabBarWithAdd(),
                const SizedBox(
                  height: 16,
                ),
                const Wallet(),
                const SizedBox(
                  height: 24,
                ),
                // CurrenyListTile()

                ListView(
                  shrinkWrap: true,
                  children: const [

                    CurrenyListTile(),
                    SizedBox(
                      height: 24,
                    ),
                    CurrenyListTile(),
                    SizedBox(
                      height: 24,
                    ),
                    CurrenyListTile()

                  ],
                )


              ],
            ),
          ),
        ]),
      ),
    );
  }


}

class Wallet extends StatelessWidget {
  const Wallet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              '\$',
              style: TextStyle(color: Colors.grey, fontSize: 28),
            ),
          ),
          const Text(
            '20,623',
            style: TextStyle(
                color: Colors.white, fontSize: 56, fontWeight: FontWeight.w100),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                '.00',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CurrenyListTile extends StatelessWidget {
  const CurrenyListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                offset: Offset(0, 1),
                blurRadius: 12)
          ],
          gradient: LinearGradient(colors: [
            Color.fromRGBO(249, 72, 70, 1),
            Color.fromRGBO(253, 175, 61, 1)
          ]),
          borderRadius:
          BorderRadius.vertical(top: Radius.circular(10))),
      padding:
      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              padding: const EdgeInsets.all(12),
              child: const Icon(
                Icons.currency_bitcoin,
                color: Color.fromRGBO(252, 83, 68, 1),
              )),
          const SizedBox(
            width: 16,
          ),
          const Text(
            '\$ 6234.40',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const Spacer(),
          const Text(
            '\$1.2884',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: 0.5,
            height: 40,
            color: Colors.white.withOpacity(0.4),
          ),
          const Icon(Icons.arrow_downward, color: Colors.white)
        ],
      ),
    );
  }
}

class UpperTabBarWithAdd extends StatelessWidget {
  const UpperTabBarWithAdd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          label: Text('wallet total'.toUpperCase()),
          backgroundColor: Colors.white,
        ),
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
          },
          child: Chip(
            label: Text('chat'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                )),
            backgroundColor:  Color.fromRGBO(33, 48, 119, 1),
          ),
        ),
        const Spacer(),
        const Icon(Icons.add, size: 36, color: Colors.white)
      ],
    );
  }
}

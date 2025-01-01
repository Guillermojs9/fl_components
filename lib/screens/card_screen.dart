import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Widget")),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(
            height: 10,
          ),
          CustomCardTipo2(
            imageUrl:
                "https://images.hdqwalls.com/wallpapers/dragon-ball-son-goku-4k-bl.jpg",
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardTipo2(
              nombre: "Dragón Shenlong",
              imageUrl: "https://images5.alphacoders.com/725/725250.jpg"),
          SizedBox(
            height: 10,
          ),
          CustomCardTipo2(
            imageUrl:
                "http://hdqwalls.com/wallpapers/dragon-ball-super-8k-s3.jpg",
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardTipo2(
            nombre: "Freezer",
            imageUrl:
                "https://img00.deviantart.net/ee4a/i/2017/264/a/6/freezer_by_koku78-dbo50c1.png",
          ),
        ],
      ),
    );
  }
}

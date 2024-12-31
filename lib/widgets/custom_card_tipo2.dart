import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        /** 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        */
        elevation: 10,
        child: Column(
          children: [
            const FadeInImage(
              image: NetworkImage(
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.sOS6KI10gtNmt6BFkfE5KAHaEK%26pid%3DApi&f=1&ipt=5a2ce3a183f073ea45e04552883aa98bad8d1b5ccfce305fbeede1f718306760&ipo=images"),
              placeholder: AssetImage("assets/jar-loading.gif"),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 700),
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                child: const Text("Goku")),
          ],
        ));
  }
}

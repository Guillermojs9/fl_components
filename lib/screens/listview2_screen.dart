import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ["Saiyans", "Terricolas", "Namekianos", "Arcosianos"];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Tipo 2"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(options[index])),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text("Aquí va el título"),
            subtitle: Text(
                "Magna sunt et aliquip sunt sunt minim in minim ut pariatur adipisicing aliqua excepteur. Aute ea cupidatat exercitation voluptate anim culpa velit et. Reprehenderit minim anim occaecat sint aliqua aliqua in non. Cupidatat mollit eu officia et reprehenderit enim ipsum elit incididunt do quis reprehenderit aliqua. Do sunt ullamco esse consequat. Voluptate incididunt mollit occaecat sit tempor labore qui ea aliqua mollit est culpa. Id ut laborum elit fugiat proident elit anim occaecat adipisicing nostrud consectetur eu nisi minim."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Ok"),
                ),
                TextButton(onPressed: () {}, child: const Text("Cancelar")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "nombre": "Gohan",
      "mote": "El Niño de Oro",
      "email": "gohan@gmail.com",
      "password": "123456",
      "role": "usuario"
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forms: Inputs"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomTextFormField(
                  hintText: "Nombre",
                  labelText: "Nombre del saiyajin",
                  helperText: "Solo saiyanjines",
                  icon: Icons.assignment_ind,
                  suffixIcon: Icons.group_add_outlined,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  hintText: "Mote",
                  labelText: "Mote del saiyajin",
                  icon: Icons.supervised_user_circle,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  hintText: "E-mail",
                  labelText: "E-Mail del saiyajin",
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  hintText: "Contraseña",
                  labelText: "Contraseña del saiyajin",
                  icon: Icons.password,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario no válido");
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text("Enviar")))),
              ],
            ),
          ),
        ));
  }
}

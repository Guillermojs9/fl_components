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
                CustomTextFormField(
                  hintText: "Nombre",
                  labelText: "Nombre del saiyajin",
                  helperText: "Solo saiyanjines",
                  icon: Icons.assignment_ind,
                  suffixIcon: Icons.group_add_outlined,
                  formProperty: "nombre",
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  hintText: "Mote",
                  labelText: "Mote del saiyajin",
                  icon: Icons.supervised_user_circle,
                  formProperty: "mote",
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  hintText: "E-mail",
                  labelText: "E-Mail del saiyajin",
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: "email",
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  hintText: "Contraseña",
                  labelText: "Contraseña del saiyajin",
                  icon: Icons.password,
                  obscureText: true,
                  formProperty: "password",
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                        child: Text("Saiyajin"),
                        value: "saiyajin",
                      ),
                      DropdownMenuItem(
                        child: Text("Namekiano"),
                        value: "namekiano",
                      ),
                      DropdownMenuItem(
                        child: Text("Arcosiano"),
                        value: "arcosiano",
                      ),
                      DropdownMenuItem(
                        child: Text("Majin"),
                        value: "majin",
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues["role"] = value ?? "terricola";
                    }),
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

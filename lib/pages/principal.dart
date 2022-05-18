import 'package:flutter/material.dart';
import 'package:front_ms_prueba/provider/principal_provider.dart';
import 'package:front_ms_prueba/widget/TextField/textfield_custom.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:provider/provider.dart';

import '../widget/AlertDialog/alert_dialog.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [_Operaciones(), _Pokemon()],
          ),
        ),
      ),
    );
  }
}

class _Pokemon extends StatelessWidget {
  const _Pokemon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PrincipalProvider provider = Provider.of<PrincipalProvider>(context);
    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Introduce el Id del pokemon a buscar",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldCustom(
                      controller: provider.idPokemon,
                      text: "Pokemon",
                      width: 300,
                    ),
                  ],
                ),
              ],
            ),
          ),
          GFButton(
            onPressed: () {
              provider.pokemon().then((value) {
                alertDialogText(context: context, resultado: value);
              });
            },
            text: "Buscar Pokemon",
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class _Operaciones extends StatelessWidget {
  const _Operaciones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PrincipalProvider provider = Provider.of<PrincipalProvider>(context);
    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ingresa los valores",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFieldCustom(
                      controller: provider.number1,
                      text: "Numero 1",
                      isNumber: true,
                    ),
                    TextFieldCustom(
                      controller: provider.number2,
                      text: "Numero 2",
                      isNumber: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const _BarButton(),
        ],
      ),
    );
  }
}

class _BarButton extends StatelessWidget {
  const _BarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PrincipalProvider provider = Provider.of<PrincipalProvider>(context);

    return GFButtonBar(
      spacing: 25,
      children: [
        GFButton(
          text: "Suma",
          icon: const Icon(
            Icons.add,
          ),
          onPressed: () {
            provider.suma().then((value) {
              alertDialogText(context: context, resultado: value);
            });
          },
        ),
        GFButton(
          text: "Resta",
          icon: const Icon(
            Icons.remove,
          ),
          onPressed: () {
            provider.resta().then((value) {
              alertDialogText(context: context, resultado: value);
            });
          },
        ),
        GFButton(
          text: "Multiplicacion",
          icon: const Icon(Icons.close),
          onPressed: () {
            provider.multiplicacion().then((value) {
              alertDialogText(context: context, resultado: value);
            });
          },
        )
      ],
    );
  }
}

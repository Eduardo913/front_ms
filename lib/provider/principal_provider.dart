import 'package:flutter/cupertino.dart';
import 'package:front_ms_prueba/Service/httpService.dart';

class PrincipalProvider extends ChangeNotifier {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  TextEditingController idPokemon = TextEditingController();

  Future<String> suma() async{
    String? num1 = number1.text;
    String? num2 = number2.text;

    if (num1 != "" || num2 != "") {
      String valor = await suma_http(num1, num2);
      return valor;
    }
    return "";
  }

  Future<String> resta() async{
    String? num1 = number1.text;
    String? num2 = number2.text;

    if (num1 != "" || num2 != "") {
      String valor = await resta_http(num1, num2);
      return valor;
    }
    return "";
  }

  Future<String> multiplicacion() async {
    String? num1 = number1.text;
    String? num2 = number2.text;

    if (num1 != "" || num2 != "") {
      String valor = await multiplicacion_http(num1, num2);
      return valor;
    }
    return "";
  }

  Future<String> pokemon() async {
    String id = idPokemon.text;
    String name = await buscar_pokemon(id);
    print(name);
    return name;
  }
}

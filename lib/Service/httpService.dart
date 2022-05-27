import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> buscar_pokemon(String id) async {
  final response =
      await http.get(Uri.parse("http://184.73.131.171/api/pokemon/$id"));
  return json.decode(response.body)["forms"][0]["name"];
  // return http.get(Uri.parse("http://localhost:5000/api/pokemon/$id"));
}

Future<String> suma_http(String number1, String number2) async {
  final response = await http.get(Uri.parse(
      "http://184.73.131.171/api/calculadora/suma/$number1/$number2/"));
  return response.body;
}

Future<String> resta_http(String number1, String number2) async {
  final response = await http.get(Uri.parse(
      "http://184.73.131.171/api/calculadora/resta/$number1/$number2/"));

  return response.body;
}

Future<String> multiplicacion_http(String number1, String number2) async {
  final response = await http.get(Uri.parse(
      "http://184.73.131.171/api/calculadora/multiplicacion/$number1/$number2/"));

  return response.body;
}

import 'package:flutter/material.dart';
import 'package:front_ms_prueba/pages/principal.dart';
import 'package:front_ms_prueba/provider/principal_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PrincipalProvider()),
      ],
      child: MaterialApp(
        title: 'Front Ms',
        theme: ThemeData.light().copyWith(backgroundColor: Colors.amber),
        home: const Principal(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

alertDialogText({required context, required resultado}) {
  return showDialog(
    context: context,
    useSafeArea: true,
    barrierDismissible: true,
    builder: (_) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      scrollable: true,
      title: const Center(child: Text("Resultado")),
      content: Center(child: Text(resultado)),
    ),
  );
}

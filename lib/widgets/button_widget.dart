import 'package:flutter/material.dart';

class IconButtonApp extends StatelessWidget {
  
  final String name;
  final String description;
  final Icon icon;
  
  const IconButtonApp({super.key, required this.name, required this.description, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: icon
        ),
      onTap: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
            title: Text(name),
            content: Text(description),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}

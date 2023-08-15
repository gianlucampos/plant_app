import 'package:flutter/material.dart';

Widget inputText({required String label}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      const Divider(color: Colors.transparent, height: 15),
      TextFormField(
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 3, color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 3, color: Colors.black),
          ),
          fillColor: Colors.white,
        ),
      ),
      const Divider(color: Colors.transparent, height: 15),
    ],
  );
}
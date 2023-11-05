
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key, required this.onChanged,
  });
final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
     onChanged: onChanged,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: 'Search',
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(width: 20, color: Colors.teal)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.red)),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}

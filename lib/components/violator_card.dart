

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViolatorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(height: 300),
        child: Container(
          decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
            color: Colors.redAccent,
            width: 3,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12.0))
      ),
    ));
  }
}
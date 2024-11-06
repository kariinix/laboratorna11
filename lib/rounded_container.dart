import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './rounded_corners_provider.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RoundedCornersProvider>(context);
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(provider.topLeft),
          topRight: Radius.circular(provider.topRight),
          bottomLeft: Radius.circular(provider.bottomLeft),
          bottomRight: Radius.circular(provider.bottomRight),
        ),
      ),
    );
  }
}

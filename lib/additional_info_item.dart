import 'package:flutter/material.dart';

class AdditionalInfoitem extends StatelessWidget {
  const AdditionalInfoitem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.water_drop, size: 32),
        SizedBox(
          height: 10,
        ),
        Text(
          'Humidity',
          style: TextStyle(),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '94',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './rounded_corners_provider.dart';
import './corner_slider.dart';
import './rounded_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        centerTitle: true,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const RoundedContainer(),
            const SizedBox(height: 40),
            Consumer<RoundedCornersProvider>(
              builder: (context, provider, _) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CornerSlider(
                              label: 'TL',
                              value: provider.topLeft,
                              onChanged: provider.updateTopLeft,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CornerSlider(
                              label: 'TR',
                              value: provider.topRight,
                              onChanged: provider.updateTopRight,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: CornerSlider(
                              label: 'BL',
                              value: provider.bottomLeft,
                              onChanged: provider.updateBottomLeft,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CornerSlider(
                              label: 'BR',
                              value: provider.bottomRight,
                              onChanged: provider.updateBottomRight,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gg_flutter_components/button/gg_circle_button.dart';
import 'package:gg_flutter_components/button/gg_rounded_button.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GGFC Storybook'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          GGCircleButton(
            icon: Icons.threed_rotation,
            colorButton: Colors.indigo,
            colorIcon: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: GGRoundedButton(
              borderRadius: 20,
              child: Text('Rounded Button with no color'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: GGRoundedButton(
              color: Colors.purple,
              borderRadius: 20,
              child: Text('Rounded Button with color'),
            ),
          ),
        ],
      ),
    );
  }
}

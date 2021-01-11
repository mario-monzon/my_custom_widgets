import 'package:flutter/material.dart';
import 'package:my_custom_widgets/screen/custom_card_screen.dart';
import 'package:my_custom_widgets/screen/custom_floating_action_button_screen.dart';

import 'custom_text_field_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: ListView(
              children: [
                ListTile(
                  title: Text('CustomButton'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomFloatinActionButtonScreen(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Custom Card'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomCard(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Custom TextField'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomTextField(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

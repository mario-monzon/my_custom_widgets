import 'package:flutter/material.dart';
import 'package:my_custom_widgets/design/app_colors.dart';

class CustomFloatinActionButtonScreen extends StatefulWidget {
  @override
  _CustomFloatinActionButtonScreenState createState() =>
      _CustomFloatinActionButtonScreenState();
}

class _CustomFloatinActionButtonScreenState
    extends State<CustomFloatinActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Button'),
      ),
      body: Container(
        child: Center(
          child: addToListButton(),
        ),
      ),
    );
  }

  Widget addToListButton() {
    return Container(
      height: 51.0,
      width: 51.0,
      padding: EdgeInsets.all(7.5),
      decoration: BoxDecoration(
        color: Color(0xFFFFAD00),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: InkWell(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.format_list_bulleted,
                color: AppColors.backgroundColor,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.add,
                color: AppColors.backgroundColor,
              ),
            ),
          ],
        ),
        onTap: () {
          print('Added to list');
        },
      ),
    );
  }
}

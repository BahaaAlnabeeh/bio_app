import 'package:flutter/material.dart';

class CustomListTileCard extends StatelessWidget {
  const CustomListTileCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.onActionPressed,
    this.marginBottom = 0,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final double marginBottom;
  final IconData trailingIcon;
  final void Function() onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: 20, right: 20,bottom: marginBottom),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: IconButton(
          onPressed: onActionPressed,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    this.icon,
    this.text,
    this.widget
  });

  final IconData icon;
  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        Navigator.pop(context);
        navigate(context);
      },
    );
  }

  void navigate(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => widget));
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:renat_test_task/provider/theme_provider.dart';

class ChangeThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      children: [
        Text(
          'Switch theme',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: HexColor('#FFFFFF'),
          ),
        ),
        Switch.adaptive(
            value: themeProvider.isDarkMode,
            onChanged: (value) {
              final provider =
                  Provider.of<ThemeProvider>(context, listen: false);
              provider.toggleTheme(value);
            })
      ],
    );
  }
}

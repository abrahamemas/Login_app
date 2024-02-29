import 'package:flutter/material.dart';
import 'package:sign_in_page/presentation/widgets/text_fonts/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Text(
          'Welcome',
          style: TextStyles.bigtext(context),
        ),
      ),
    );
  }
}

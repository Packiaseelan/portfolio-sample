import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';
import 'package:sample/config/config.dart';
import 'package:sample/ui/widgets/content.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var home = data.getStrings('home');
    return ContentWidget(
      children: [
        Text(
          home['greeting'],
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 10),
        Text(
          home['name'],
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(height: 10),
        Text(
          home['role'],
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Spacer(),
        ClayText(
          home['greeting_text'],
          style: Theme.of(context).textTheme.headline5!.copyWith(
                letterSpacing: 1.4,
                fontWeight: FontWeight.w900,
              ),
          color: Theme.of(context).colorScheme.background,
        ),
        const Spacer(),
        Text(
          home['summary'],
          style: Theme.of(context).textTheme.bodyText2!.copyWith(height: 1.5),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sample/config/config.dart';
import 'package:sample/ui/widgets/content.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var strings = data.getStrings('about');
    return SingleChildScrollView(
      child: ContentWidget(
        children: [
          Text(
            strings['point1'],
            style: Theme.of(context).textTheme.bodyText1!.copyWith(height: 1.5),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          Text(
            strings['point2'],
            style: Theme.of(context).textTheme.bodyText1!.copyWith(height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

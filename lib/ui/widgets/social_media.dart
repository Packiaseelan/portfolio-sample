import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:sample/models/contact_detail.dart';
import 'package:sample/ui/widgets/circle_button.dart';
import 'package:sample/utils/enumerations.dart';

class SocialMedia extends StatelessWidget {
  final ContactDetail social;
  const SocialMedia({Key? key, required this.social}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(social.description),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: social.details
              .map((detail) => CircleButtonWidget(
                    iconPath: _getIconPath(detail.name),
                    onPressed: () => _onPressed(detail),
                  ))
              .toList(),
        )
      ],
    );
  }

  String _getIconPath(String name) {
    switch (name.toSocial()) {
      case Social.linkedin:
        return 'assets/icons/linkedin.svg';
      case Social.twitter:
        return 'assets/icons/twitter.svg';
      case Social.facebook:
        return 'assets/icons/facebook.svg';
      case Social.instagram:
        return 'assets/icons/instagram.svg';
    }
  }

  void _onPressed(Detail detail) {
    if (detail.value.isNotEmpty) {
      html.window.open(detail.value, "_blank");
    }
  }
}

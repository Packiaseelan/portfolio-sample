import 'package:flutter/material.dart';
import 'package:sample/config/config.dart';
import 'package:sample/models/contact_detail.dart';
import 'package:sample/ui/widgets/content.dart';
import 'package:sample/ui/widgets/icon_button.dart';
import 'package:sample/ui/widgets/maps.dart';
import 'package:sample/ui/widgets/social_media.dart';
import 'package:sample/utils/enumerations.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var json = data.getStrings('contact');
    var contact = ContactModel.fromJson(json);

    return SingleChildScrollView(
      child: ContentWidget(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const MapsWidget(),
          const SizedBox(height: 20),
          Text(
            contact.subTitle,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 20),
          ContactDetails(contact: contact.contactDetails),
          const SizedBox(height: 20),
          SocialMedia(social: contact.socialMedia),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  final launcher = LauncherService();
  final ContactDetail contact;

  ContactDetails({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(contact.description),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonWidget(
              iconPath: _getIconPath(contact.details[0]),
              title: contact.details[0].name,
              onPressed: () => _onPressed(contact.details[0]),
            ),
            IconButtonWidget(
              iconPath: _getIconPath(contact.details[1]),
              title: contact.details[1].name,
              onPressed: () => _onPressed(contact.details[1]),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonWidget(
              iconPath: _getIconPath(contact.details[2]),
              title: contact.details[2].name,
              onPressed: () => _onPressed(contact.details[2]),
            ),
            IconButtonWidget(
              iconPath: _getIconPath(contact.details[3]),
              title: contact.details[3].name,
              onPressed: () => _onPressed(contact.details[3]),
            ),
          ],
        ),
      ],
    );
  }

  String _getIconPath(Detail detail) {
    switch (detail.name.toContacts()) {
      case Contacts.phone:
        return 'assets/icons/phone.svg';
      case Contacts.whatsapp:
        return 'assets/icons/whatsapp.svg';
      case Contacts.skype:
        return 'assets/icons/skype.svg';
      case Contacts.email:
        return 'assets/icons/email.svg';
    }
  }

  void _onPressed(Detail detail) {
    switch (detail.name.toContacts()) {
      case Contacts.phone:
        launcher.callMe(detail.value);
        break;
      case Contacts.whatsapp:
        launcher.whatsApp(detail.value);
        break;
      case Contacts.skype:
        launcher.skype(detail.value);
        break;
      case Contacts.email:
        launcher.sendMail(detail.value);
        break;
    }
  }
}

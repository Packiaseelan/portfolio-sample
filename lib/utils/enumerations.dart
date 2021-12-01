import 'package:flutter/foundation.dart';

enum Menu { home, about, skills, experience, contact }
enum Contacts { phone, whatsapp, skype, email }
enum Social { linkedin, twitter, facebook, instagram }

extension MenuEx on Menu {
  String get title => describeEnum(this).toUpperCase();
}

extension StringToContacts on String {
  Contacts toContacts() =>
      Contacts.values.firstWhere((d) => describeEnum(d) == toLowerCase());

  Social toSocial() =>
      Social.values.firstWhere((s) => describeEnum(s) == toLowerCase());
}

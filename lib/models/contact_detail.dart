class ContactModel {
    ContactModel({
        required this.subTitle,
        required this.contactDetails,
        required this.socialMedia,
    });

    String subTitle;
    ContactDetail contactDetails;
    ContactDetail socialMedia;

    factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        subTitle: json["subTitle"],
        contactDetails: ContactDetail.fromJson(json["contact_details"]),
        socialMedia: ContactDetail.fromJson(json["social_media"]),
    );

    Map<String, dynamic> toJson() => {
        "subTitle": subTitle,
        "contact_details": contactDetails.toJson(),
        "social_media": socialMedia.toJson(),
    };
}

class ContactDetail {
    ContactDetail({
        required this.description,
        required this.details,
    });

    String description;
    List<Detail> details;

    factory ContactDetail.fromJson(Map<String, dynamic> json) => ContactDetail(
        description: json["description"],
        details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
    };
}

class Detail {
    Detail({
        required this.name,
        required this.iconPath,
        required this.value,
    });

    String name;
    String iconPath;
    String value;

    factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        name: json["name"],
        iconPath: json["icon_path"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "icon_path": iconPath,
        "value": value,
    };
}

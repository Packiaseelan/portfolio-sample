class SkillsModel {
    SkillsModel({
        required this.chip,
        required this.chart,
    });

    List<String> chip;
    List<Chart> chart;

    factory SkillsModel.fromJson(Map<String, dynamic> json) => SkillsModel(
        chip: List<String>.from(json["chip"].map((x) => x)),
        chart: List<Chart>.from(json["chart"].map((x) => Chart.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "chip": List<dynamic>.from(chip.map((x) => x)),
        "chart": List<dynamic>.from(chart.map((x) => x.toJson())),
    };
}

class Chart {
    Chart({
        required this.title,
        required this.percentage,
    });

    String title;
    double percentage;

    factory Chart.fromJson(Map<String, dynamic> json) => Chart(
        title: json["title"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "percentage": percentage,
    };
}

class Dates {
  final String? maximum;
  final String? minimum;

  const Dates({this.maximum, this.minimum});

  factory Dates.fromJson(Map<String, dynamic> json) {
    return Dates(
      maximum: json["maximum"] as String?,
      minimum: json["minimum"] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "maximum": maximum,
      "minimum": minimum,
    };
  }
}

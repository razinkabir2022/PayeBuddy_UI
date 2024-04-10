class OnboardingResModel {
  int? id;
  String? mainHeading;
  String? heading;
  String? subHeading;
  

  OnboardingResModel(
      {this.id, this.mainHeading, this.heading, this.subHeading});

  OnboardingResModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mainHeading = json['mainHeading'];
    heading = json['heading'];
    subHeading = json['subHeading'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mainHeading'] = this.mainHeading;
    data['heading'] = this.heading;
    data['subHeading'] = this.subHeading;
    return data;
  }
}

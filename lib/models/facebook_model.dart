class FacebookModel {
  String firstName;
  String lastName;
  Picture picture;

  FacebookModel({this.firstName, this.lastName, this.picture});

  factory FacebookModel.fromJson(Map<String, dynamic> json) {
    return FacebookModel(
      firstName: json['first_name'],
      lastName: json['last_name'],
      picture: Picture.fromJson(json['picture']),
    );
  }
}

class Picture {
  Data data;

  Picture({this.data});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  int height;
  bool isSilhouette;
  String url;

  Data({this.height, this.isSilhouette, this.url});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      height: json['height'],
      isSilhouette: json['is_silhouette'],
      url: json['url'],
    );
  }
}

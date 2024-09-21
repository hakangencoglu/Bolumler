// Modal class for the data we are getting from the API
class FakulteDataModel{
  FakulteDataModel({
    required this.FakulteKodu,
    required this.FakulteAdi,
    required this.BolumAdi,
    required this.BolumKodu,
  });

  final String FakulteKodu;
  final String FakulteAdi;
  final String BolumAdi;
  final String BolumKodu;

  factory FakulteDataModel.fromJson(Map<String, dynamic> json) => FakulteDataModel(
    FakulteKodu: json["FakulteKodu"],
    FakulteAdi: json["FakulteAdi"],
    BolumAdi: json["BolumAdi"],
    BolumKodu: json["BolumKodu"],
  );


  Map<String, dynamic> toJson() => {
    "FakulteKodu": FakulteKodu,
    "FakulteAdi": FakulteAdi,
    "BolumAdi": BolumAdi,
    "BolumKodu": BolumKodu,
  };
}
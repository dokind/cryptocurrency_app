import 'usd_model.dart';

class QuoteModel {
  final UsdModel usdModel;

  QuoteModel({
    required this.usdModel,
  });
  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      usdModel: UsdModel.fromJson(json["USD"]),
    );
  }
}

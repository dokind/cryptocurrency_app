import 'fetch_coins_models.dart';

class DataModel {
  final int id;
  final String name;
  final String symbol;
  final String slug;
  final int numMarketPairs;
  final String dateAdded;
  final List<dynamic> tags;
  final int maxSupply;
  final num circulatingSupply;
  final num totalSupply;

  final int cmcRank;
  final String lastUpdated;
  final QuoteModel quoteModel;

  DataModel(
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.numMarketPairs,
      this.dateAdded,
      this.tags,
      this.maxSupply,
      this.circulatingSupply,
      this.totalSupply,
      this.cmcRank,
      this.lastUpdated,
      this.quoteModel);
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      json["id"],
      json["name"],
      json["symbol"],
      json["slug"],
      json["num_market_pairs"],
      json["date_added"],
      json["tags"],
      json["max_supply"] == null ? 0 : json["max_supply"],
      json["circulating_supply"],
      json["total_supply"],
      json["cmc_rank"],
      json["last_updated"],
      QuoteModel.fromJson(json["quote"]),
    );
  }
}

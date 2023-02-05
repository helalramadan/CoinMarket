import 'quoteModel.dart';

class DataModel {
  DataModel({
    this.id,
    this.name,
    this.symbol,
    this.slug,
    this.cmcRank,
    this.numMarketPairs,
    this.circulatingSupply,
    this.totalSupply,
    this.maxSupply,
    this.lastUpdated,
    this.dateAdded,
    this.tags,
    this.platform,
    this.selfReportedCirculatingSupply,
    this.selfReportedMarketCap,
    this.quote,
  });

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    cmcRank = json['cmcRank'];
    numMarketPairs = json['numMarketPairs'];
    circulatingSupply = json['circulatingSupply'];
    totalSupply = json['totalSupply'];
    lastUpdated = json['lastUpdated'];
    dateAdded = json['dateAdded'];
    tags = json['tags'];
    platform = json['platform'];
    selfReportedCirculatingSupply = json['selfReportedCirculatingSupply'];
    selfReportedMarketCap = json['selfReportedMarketCap'];
    quote = json['quote'];
  }

  int? id;
  String? name;
  String? symbol;
  String? slug;
  int? cmcRank;
  int? numMarketPairs;
  int? circulatingSupply;
  int? totalSupply;
  int? maxSupply;
  DateTime? lastUpdated;
  DateTime? dateAdded;
  List<String>? tags;
  dynamic platform;
  dynamic selfReportedCirculatingSupply;
  dynamic selfReportedMarketCap;
  Map<String, Quote>? quote;
}

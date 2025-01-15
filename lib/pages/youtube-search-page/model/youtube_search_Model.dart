import 'package:fluuter_course/pages/youtube-search-page/model/item_data.dart';
import 'package:fluuter_course/pages/youtube-search-page/model/page_infor.dart';

class YoutubeSearchModel {
  final String kind;
  final String etag;
  final String nextPageToken;
  final String regionCode;
  final PageInfo pageInfo;
  final List<ItemData> itemsData;

  YoutubeSearchModel({
    required this.kind,
    required this.etag,
    required this.nextPageToken,
    required this.regionCode,
    required this.pageInfo,
    required this.itemsData,
  });

  factory YoutubeSearchModel.fromJson(Map<String, dynamic> json) {
    final items = json['items'] as List;
    List<ItemData> itemData =
        items.map((singleItem) => ItemData.fromJson(singleItem)).toList();
    return YoutubeSearchModel(
      etag: json["etag"],
      kind: json["kind"],
      nextPageToken: json["nextPageToken"],
      regionCode: json["regionCode"],
      pageInfo: PageInfo.fromJson(json['pageInfo']),
      itemsData: itemData,
    );
  }
}

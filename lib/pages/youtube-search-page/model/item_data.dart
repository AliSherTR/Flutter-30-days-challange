import 'package:fluuter_course/pages/youtube-search-page/model/id_data.dart';
import 'package:fluuter_course/pages/youtube-search-page/model/snippet_data.dart';

class ItemData {
  final String kind;
  final String etag;
  final ItemIdData id;
  final Snippet snippet;

  ItemData({
    required this.etag,
    required this.kind,
    required this.id,
    required this.snippet,
  });

  factory ItemData.fromJson(Map<String, dynamic> json) {
    return ItemData(
      etag: json["etag"],
      kind: json["kind"],
      id: ItemIdData.fromJson(json['id']),
      snippet: Snippet.fromJson(json['snippet']),
    );
  }
}

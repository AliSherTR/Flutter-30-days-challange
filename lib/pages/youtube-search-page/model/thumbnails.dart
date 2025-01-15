import 'package:fluuter_course/pages/youtube-search-page/model/thumnail_data.dart';

class Thumbnails {
    final ThumbnailData defaultThumbnail;
    final ThumbnailData medium;
    final ThumbnailData high;

    Thumbnails({
      required this.defaultThumbnail,
      required this.medium,
      required this.high,
    });

    factory Thumbnails.fromJson(Map<String, dynamic> json) {
      return Thumbnails(
        defaultThumbnail: ThumbnailData.fromJson(json["default"]),
        medium: ThumbnailData.fromJson(json["medium"]),
        high: ThumbnailData.fromJson(json["high"]),
      );
    }

}

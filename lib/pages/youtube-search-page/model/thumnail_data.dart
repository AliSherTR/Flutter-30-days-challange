class ThumbnailData {
  final String url;

  ThumbnailData({
    required this.url,
  });

  factory ThumbnailData.fromJson(Map<String, dynamic> json) {
    return ThumbnailData(
      url: json['url'],
    );
  }
}

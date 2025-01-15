class ItemIdData {
  final String kind;
  final String? channelId;

  ItemIdData({
    required this.kind,
    required this.channelId,
  });

  factory ItemIdData.fromJson(Map<String, dynamic> json) {
    return ItemIdData(
      kind: json["kind"],
      channelId: json['channelId'],
    );
  }
}

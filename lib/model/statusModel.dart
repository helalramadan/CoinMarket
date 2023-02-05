class Status {
  Status({
    this.timestamp,
    this.errorCode,
    this.errorMessage,
    this.elapsed,
    this.creditCount,
    this.notice,
  });

  Status.fromJson(Map<String, dynamic> json) {
    timestamp = json["timestamp"];
    errorCode = json["errorCode"];
    errorMessage = json["errorMessage"];
    elapsed = json["elapsed"];
    creditCount = json["creditCount"];
    notice = json["notice"];
  }

  DateTime? timestamp;
  int? errorCode;
  dynamic errorMessage;
  int? elapsed;
  int? creditCount;
  dynamic notice;
}

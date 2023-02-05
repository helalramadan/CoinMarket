import 'dataModel.dart';
import 'statusModel.dart';

class CurrentModel {
  CurrentModel({
    this.status,
    this.data,
  });

  Status? status;
  List<DataModel>? data;

  factory CurrentModel.fromJson(Map<String, dynamic> json) {
    return CurrentModel(
        status: Status.fromJson(json["status"]),
        data: json["data"].forEach((e) => DataModel.fromJson(e)));
  }
//
}

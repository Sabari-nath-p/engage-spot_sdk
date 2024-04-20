import 'package:engagespot_sdk/models/notificationModel.dart';

class NotificationSet {
  int? unReadCount = 0;
  List<EsMessage>? NotificationMessage = [];
  NotificationSet({this.unReadCount, this.NotificationMessage});
}

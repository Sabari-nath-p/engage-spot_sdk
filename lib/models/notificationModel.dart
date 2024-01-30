class NotificationModel {
  int? unreadCount;
  Pagination? pagination;
  List<EsMessage>? esMessage;

  NotificationModel({this.unreadCount, this.pagination, this.esMessage});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    unreadCount = json['unreadCount'];
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      esMessage = <EsMessage>[];
      json['data'].forEach((v) {
        esMessage!.add(new EsMessage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unreadCount'] = this.unreadCount;
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.esMessage != null) {
      data['data'] = this.esMessage!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  int? totalCount;

  Pagination({this.totalCount});

  Pagination.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    return data;
  }
}

class EsMessage {
  int? id;
  String? title;
  String? message;
  String? icon;
  String? url;
  String? createdAt;
  String? seenAt;
  String? clickedAt;

  EsMessage(
      {this.id,
      this.title,
      this.message,
      this.icon,
      this.url,
      this.createdAt,
      this.seenAt,
      this.clickedAt});

  EsMessage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    message = json['message'];
    icon = json['icon'];
    url = json['url'];
    createdAt = json['createdAt'];
    seenAt = json['seenAt'];
    clickedAt = json['clickedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['message'] = this.message;
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['createdAt'] = this.createdAt;
    data['seenAt'] = this.seenAt;
    data['clickedAt'] = this.clickedAt;
    return data;
  }
}

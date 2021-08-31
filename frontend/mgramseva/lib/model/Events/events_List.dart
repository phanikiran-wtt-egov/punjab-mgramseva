import 'package:json_annotation/json_annotation.dart';

part 'events_List.g.dart';

@JsonSerializable()
class EventsList {
  @JsonKey(name: "events")
  List<Events>? events;
  EventsList();
  factory EventsList.fromJson(Map<String, dynamic> json) =>
      _$EventsListFromJson(json);

  Map<String, dynamic> toJson() => _$EventsListToJson(this);
}

@JsonSerializable()
class Events {
  @JsonKey(name: "tenantId")
  String? tenantId;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "referenceId")
  String? referenceId;
  @JsonKey(name: "eventType")
  String? eventType;
  @JsonKey(name: "eventCategory")
  String? eventCategory;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "source")
  String? source;
  @JsonKey(name: "postedBy")
  String? postedBy;
  @JsonKey(name: "recepient")
  Recepient? recepient;
  @JsonKey(name: "actions")
  String? actions;
  @JsonKey(name: "eventDetails")
  String? eventDetails;
  @JsonKey(name: "auditDetails")
  AuditDetails? auditDetails;
  @JsonKey(name: "recepientEventMap")
  String? recepientEventMap;
  @JsonKey(name: "generateCounterEvent")
  String? generateCounterEvent;
  @JsonKey(name: "internallyUpdted")
  String? internallyUpdted;
  Events();
  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);

  Map<String, dynamic> toJson() => _$EventsToJson(this);
}

@JsonSerializable()
class AuditDetails {
  @JsonKey(name: "createdBy")
  String? createdBy;
  @JsonKey(name: "createdTime")
  int? createdTime;
  @JsonKey(name: "lastModifiedBy")
  String? lastModifiedBy;
  @JsonKey(name: "lastModifiedTime")
  int? lastModifiedTime;
  AuditDetails();
  factory AuditDetails.fromJson(Map<String, dynamic> json) =>
      _$AuditDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AuditDetailsToJson(this);
}

@JsonSerializable()
class Recepient {
  @JsonKey(name: "toRoles")
  String? toRoles;
  @JsonKey(name: "toUsers")
  List<String>? toUsers;

  Recepient({this.toRoles, this.toUsers});
  factory Recepient.fromJson(Map<String, dynamic> json) =>
      _$RecepientFromJson(json);

  Map<String, dynamic> toJson() => _$RecepientToJson(this);
}
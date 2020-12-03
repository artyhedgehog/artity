import 'package:artity/src/models/entity_type_model.dart';

abstract class EntityModel {
  final String id;
  final String type;

  List<EntityModel> get children => _childrenJson.map((dynamic json) => EntityModel.fromJson(json));

  final List<dynamic> _childrenJson;

  EntityModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],         
        type = json['type'],
        _childrenJson = json['children'];

  Map<String, dynamic> toJson();
}

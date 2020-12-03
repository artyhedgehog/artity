class EntityTypeModel {
  String name;

  EntityTypeModel._(this.name);
  
  factory EntityTypeModel.byName(String name) => EntityTypeModel._(name);
}
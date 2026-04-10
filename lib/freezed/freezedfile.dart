class PersonModel{
  String? name;
  PersonModel({this.name});

  //fromjson
PersonModel.fromJson(Map<String,dynamic>json){
  name = json['name'];
}

//tojson
Map<String,dynamic>toJson(){
  final Map<String,dynamic>data = new Map<String,dynamic>();
  data['name']=this.name;
  return data;
}

//copywith
PersonModel copyWith({String? name}){
return PersonModel(name: name??this.name);
}
}
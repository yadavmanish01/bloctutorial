class PersonMModel{
  String? name;
  PersonMModel({this.name});

  //fromjson
PersonMModel.fromJson(Map<String,dynamic>json){
  name = json['name'];
}

//tojson
Map<String,dynamic>toJson(){
  final Map<String,dynamic>data = new Map<String,dynamic>();
  data['name']=this.name;
  return data;
}

//copywith
PersonMModel copyWith({String? name}){
return PersonMModel(name: name??this.name);
}

//toString method
//to print the value
@override
  String toString(){
  return 'Person(first name: $name)';
}
}

class Post{
  late int id;
  late String name;
  late int salary;
  late int age;
  late String profileImage;

  Post({
    required this.id,
    required this.name,
    required this.salary,
    required this.age,
    required this.profileImage,
  });

  Post.fromJson(Map<String,dynamic>json)
  : id = json['id'],
    name = json['employeeName'],
        salary = json['employeeSalary'],
        age = json['employeeAge'],
        profileImage = json['profileImage'];

  Map<String,dynamic>toJson()=>{
    'id':id,
    'employeeName':name,
    'employeeSalary':salary,
    'userId':age,
    'profileImage':profileImage
  };
}
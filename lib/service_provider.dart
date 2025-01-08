class ServiceProvider {
  String name;
  String profession;
  String description;
  String phone;
  bool isIndividual;


  ServiceProvider({
    required this.name,
    required this.profession,
    required this.description,
    required this.phone,
    required this.isIndividual,
  });

  String get getName{
    return name;
  }
  String get getProfession{
    return profession;
  }
  String get getDescription{
    return description;
  }
  String get getPhone{
    return phone;
  }
  bool get getIsIndividual{
    return isIndividual;
  }

  @override String toString(){
    return '\nName: $name \nProfession: $profession \nPhone: $phone \nDescription: $description';
  }
}

List<ServiceProvider> providers = [
  ServiceProvider(
    name: "Hana Wehbe",
    profession: "IT Support",
    description: "Sets up smart home systems and solves technical issues.",
    phone: "71-514861",
    isIndividual: true,
  ),
  ServiceProvider(
    name: "Ahmad Farhat",
    profession: "Plumber",
    description: "Expert in home plumbing repairs.",
    phone: "01-399652",
    isIndividual: true,
  ),
  ServiceProvider(
    name: "Matar Plumbing Co.",
    profession: "Plumber",
    description: "Professional plumbing services for buildings.",
    phone: "03-450048",
    isIndividual: false,
  ),
  ServiceProvider(
    name: "Ali Mroue",
    profession: "Electrician",
    description: "Licensed electrician with 10+ years of experience.",
    phone: "81-739827",
    isIndividual: true,
  ),
  ServiceProvider(
    name: "Noor Electric Co.",
    profession: "Electrician",
    description: "Providing long term electrical solutions.",
    phone: "01-472783",
    isIndividual: false,
  ),
  ServiceProvider(
    name: "Saad WoodWorks",
    profession: "Carpenter",
    description: "Specializes in custom furniture and woodwork.",
    phone: "80-830214",
    isIndividual: false,
  ),
  ServiceProvider(
    name: "Maria Assi",
    profession: "Carpenter",
    description: "Crafting quality wooden furniture for your home.",
    phone: "03-092882",
    isIndividual: true,
  ),
  ServiceProvider(
    name: "Rayan Mroue",
    profession: "Painter",
    description: "Professional painter for both interior and exterior.",
    phone: "01-283881",
    isIndividual: true,
  ),
  ServiceProvider(
    name: "ColorPro Lebanon",
    profession: "Painter",
    description: "Experienced in large-scale painting projects.",
    phone: "81-284402",
    isIndividual: false,
  ),
  ServiceProvider(
    name: "Baytouna Electric",
    profession: "Electrician",
    description: "All-around home electricity specialist.",
    phone: "07-109873",
    isIndividual: false,
  ),
];
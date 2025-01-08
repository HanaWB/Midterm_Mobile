import 'package:flutter/material.dart';
import '../service_provider.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> professions = ["Plumber", "Electrician", "Carpenter", "IT Support"];

  String selectedType = "Any";
  String? selectedProfession;
  ServiceProvider? selectedProvider;

  @override
  Widget build(BuildContext context) {
    List<ServiceProvider> filteredProviders = providers.where((provider) {
      bool type = selectedType == "Any" || (selectedType == "Individual" && provider.isIndividual) || (selectedType == "Company" && !provider.isIndividual);
      bool professionType = provider.profession == selectedProfession;

      return type && professionType;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Service Providers")),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Individual"),
                Radio(
                  value: "Individual",
                  groupValue: selectedType,
                  onChanged: (value) {
                    setState(() {
                      selectedType = value!;
                      selectedProvider = null;
                    });
                  },
                ),
                Text("Company"),
                Radio(
                  value: "Company",
                  groupValue: selectedType,
                  onChanged: (value) {
                    setState(() {
                      selectedType = value!;
                      selectedProvider = null;
                    });
                  },
                ),
                Text("Any"),
                Radio(
                  value: "Any",
                  groupValue: selectedType,
                  onChanged: (value) {
                    setState(() {
                      selectedType = value!;
                      selectedProvider = null;
                    });
                  },
                ),
              ],
            ),
          ),

          Container(
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: DropdownButton<String>(
              value: selectedProfession,
              hint: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Select Profession"),
              ),
              isExpanded: true,
              underline: SizedBox(),
              items: professions.map((profession) {
                return DropdownMenuItem(
                  value: profession,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(profession),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedProfession = value!;
                  selectedProvider = null;
                });
              },
            ),
          ),

          SizedBox(height: 16),

          Container(
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: DropdownButton<ServiceProvider>(
              value: selectedProvider,
              hint: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Select Provider"),
              ),
              isExpanded: true,
              underline: SizedBox(),
              items: filteredProviders.map((provider) {
                return DropdownMenuItem(
                  value: provider,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(provider.name),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedProvider = value;
                });
              },
            ),
          ),

          if (selectedProvider != null)
            Container(
              width: 200,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    selectedProvider!.toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

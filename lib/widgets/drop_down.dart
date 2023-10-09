import 'package:flutter/material.dart';
import 'package:inclusion_clinical_system/constants/constants.dart';
import 'package:inclusion_clinical_system/models/models_model.dart';
import 'package:inclusion_clinical_system/services/api_services.dart';
import 'package:inclusion_clinical_system/widgets/text_widget.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => _ModelsDropDownWidgetState();
}

class _ModelsDropDownWidgetState extends State<ModelsDropDownWidget> {
  String currentModel = "Model1";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ModelsModel>>(
      future: ApiService.getModels(), 
      builder: (context, snapshot){
        if(snapshot.hasError){
          return Center(child: TextWidget(label: snapshot.error.toString()),);
        }
        return snapshot.data == null || snapshot.data!.isEmpty ? 
        SizedBox.shrink()
        : DropdownButton(
      dropdownColor: scaffoldBackgroundColor,
      iconEnabledColor: Colors.white,
      items: List<DropdownMenuItem<String>>.generate(
          snapshot.data!.length,
          (index) => DropdownMenuItem(
              value: snapshot.data![index].id,
              child: TextWidget(
                label: snapshot.data![index].id,
                fontSize: 15,
              ))),
      value: currentModel,
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
        );
        
      });
  }
}


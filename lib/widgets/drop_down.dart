import 'package:flutter/material.dart';
import 'package:inclusion_clinical_system/constants/constants.dart';
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
    return FutureBuilder(
      future: ApiService.getModels(), 
      builder: (context, snapshot){
        if(snapshot.hasError){
          return Center(child: TextWidget(label: snapshot.error.toString()),);
        }
        else 

        
      });
  }
}
/**DropdownButton(
      dropdownColor: scaffoldBackgroundColor,
      iconEnabledColor: Colors.white,
      items: getModelsItem,
      value: currentModel,
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
    ); */
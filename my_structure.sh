#!/bin/bash

projectName=$1

if [ -z "$projectName" ]; then
  echo "⚠️ Project name missing, using default: my_flutter_app"
  projectName="my_flutter_app"
fi

flutter create $projectName
cd $projectName/lib

mkdir -p controller model view widgets bindings route services core utils

echo "class AppBinding {}" > bindings/app_binding.dart
echo "class AppController {}" > controller/app_controller.dart
echo "class AppModel {}" > model/app_model.dart
echo "class ApiService {}" > services/api_service.dart
echo "class AppRoute {}" > route/app_route.dart
echo "class AppUtils {}" > utils/app_utils.dart
echo "class CustomWidget {}" > widgets/custom_widget.dart
echo "class HomeView {}" > view/home_view.dart

echo "✅ Flutter project '$projectName' created with full structure."

echo -e "dependencies:\n  get:" >> pubspec.yaml

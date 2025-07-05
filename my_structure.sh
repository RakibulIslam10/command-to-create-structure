#!/bin/bash

# Get project name from first argument
projectName=$1

# Check if provided
if [ -z "$projectName" ]; then
  echo "❌ Project name not provided!"
  echo "✅ Usage: bash my_structure.sh <project-name>"
  exit 1
fi

# Create Flutter project
flutter create $projectName
cd $projectName/lib

# Create structure
mkdir -p controller model view widgets bindings route services core utils

# Create demo files
echo "class AppBinding {}" > bindings/app_binding.dart
echo "class AppController {}" > controller/app_controller.dart
echo "class AppModel {}" > model/app_model.dart
echo "class ApiService {}" > services/api_service.dart
echo "class AppRoute {}" > route/app_route.dart
echo "class AppUtils {}" > utils/app_utils.dart
echo "class CustomWidget {}" > widgets/custom_widget.dart
echo "class HomeView {}" > view/home_view.dart

echo "✅ Flutter project '$projectName' created with custom structure!"

echo "dependencies:\n  get:" >> pubspec.yaml


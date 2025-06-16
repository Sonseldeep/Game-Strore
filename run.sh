#!/bin/bash

# Exit on error
set -e

echo "📦 Installing NuGet dependencies..."
dotnet add package MinimalApis.Extensions --version 0.11.0

echo "🔧 Building the project..."
dotnet build

echo "🚀 Running the project..."
dotnet run

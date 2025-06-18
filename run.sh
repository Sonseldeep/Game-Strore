#!/bin/bash

# Exit immediately on error
set -e

echo ""
echo "🛠️  ==============================================="
echo "🛠️   Starting setup: Installing dependencies..."
echo "🛠️  ==============================================="
echo ""

# Install NuGet packages
dotnet add package MinimalApis.Extensions --version 0.11.0
dotnet add package Microsoft.EntityFrameworkCore.Sqlite --version 8.0.2
# Create a local tool manifest if it doesn't exist
if [ ! -f .config/dotnet-tools.json ]; then
    dotnet new tool-manifest
fi

# Install dotnet-ef locally
dotnet tool install dotnet-ef --version 8.0.2
dotnet add package Microsoft.EntityFrameworkCore.Design --version 8.0.2


echo ""
echo "✅ Dependencies installed successfully!"
echo ""

echo "🔧 ==============================================="
echo "🔧   Building the project..."
echo "🔧 ==============================================="
echo ""

dotnet build

echo ""
echo "✅ Build completed successfully!"
echo ""

echo "🚀 ==============================================="
echo "🚀   Running the project..."
echo "🚀 ==============================================="
echo ""

dotnet run

echo ""
echo "🎉 Project is now running!"

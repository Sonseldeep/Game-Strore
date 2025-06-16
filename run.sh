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

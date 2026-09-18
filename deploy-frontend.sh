#!/bin/bash

echo "🚀 Starting Frontend Deployment Process..."

# Build the project
echo "📦 Building production build..."
npm run build:production

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo "📁 Files are ready in the 'dist' folder"
    echo ""
    echo "📋 Next Steps:"
    echo "1. Login to your GoDaddy cPanel"
    echo "2. Go to File Manager"
    echo "3. Navigate to public_html folder"
    echo "4. Upload ALL files from the 'dist' folder"
    echo "5. Make sure to replace existing files"
    echo ""
    echo "🌐 Your site will be live at: https://medicorevault.com"
else
    echo "❌ Build failed! Please check the errors above."
    exit 1
fi
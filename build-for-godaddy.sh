#!/bin/bash

echo "🚀 Building Medicore Vault for GoDaddy Node.js Hosting..."

# Step 1: Build the React frontend
echo "📦 Building frontend..."
npm run build:production

if [ $? -ne 0 ]; then
    echo "❌ Frontend build failed!"
    exit 1
fi

echo "✅ Frontend build successful!"

# Step 2: Copy built files to backend directory
echo "📁 Copying built frontend files to backend..."
rm -rf backend/dist
cp -r dist backend/

# Step 3: Create deployment package
echo "📦 Creating deployment package..."
cd backend

# Install production dependencies
echo "📥 Installing production dependencies..."
npm install --production

# Create zip file for GoDaddy upload
echo "🗜️ Creating zip file for deployment..."
zip -r ../medicorevault-deployment.zip . -x "node_modules/.*" "*.log" "*.md"

cd ..

echo ""
echo "✅ Deployment package ready!"
echo "📂 File: medicorevault-deployment.zip"
echo ""
echo "📋 Next Steps:"
echo "1. Login to your GoDaddy account"
echo "2. Go to Node.js Hosting section"
echo "3. Create new application"
echo "4. Upload medicorevault-deployment.zip"
echo "5. Configure environment variables"
echo "6. Deploy!"
echo ""
echo "🌐 Your site will be live at: https://medicorevault.com"
#!/bin/bash

echo "🚀 Preparing MedicoReVault for GoDaddy Deployment..."

# Step 1: Build frontend
echo "📦 Building frontend..."
npm run build:production

if [ $? -ne 0 ]; then
    echo "❌ Frontend build failed!"
    exit 1
fi

# Step 2: Copy built files to backend for serving
echo "📁 Preparing full-stack deployment..."
cp -r dist backend/

# Step 3: Create deployment package
echo "🗜️ Creating deployment package..."
cd backend
npm install --production

# Create zip file for GoDaddy upload
zip -r ../medicorevault-godaddy-deployment.zip . -x "node_modules/.*" "*.log" "*.md" ".git/*"

cd ..

echo ""
echo "✅ GoDaddy deployment package ready!"
echo "📂 File: medicorevault-godaddy-deployment.zip"
echo ""
echo "📋 GoDaddy Deployment Options:"
echo ""
echo "🎯 OPTION 1: GoDaddy Node.js Hosting (Recommended)"
echo "1. Login to GoDaddy → My Products → Web Hosting → Manage"
echo "2. Look for 'Node.js Hosting' or 'Applications' section"
echo "3. Upload: medicorevault-godaddy-deployment.zip"
echo "4. Set Environment Variables:"
echo "   NODE_ENV=production"
echo "   PORT=3000"
echo "   MONGO_URI=mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database"
echo "   JWT_SECRET=MzY4NDg5NjEyODc0MzIxNjU0OTg3MzIxNjU0OTg3MzI1NmFkZjgyMw=="
echo "   FRONTEND_URL=https://medicorevault.com"
echo "5. Connect to domain: medicorevault.com"
echo "6. Deploy!"
echo ""
echo "🎯 OPTION 2: Traditional Hosting (Frontend Only)"
echo "1. Login to GoDaddy cPanel"
echo "2. Go to File Manager → public_html"
echo "3. Upload ALL files from 'dist' folder"
echo "4. For backend: Use free cloud service (Vercel/Railway)"
echo ""
echo "🌐 After deployment, your site will be live at:"
echo "https://medicorevault.com"
echo ""
echo "🆘 Need help? Contact GoDaddy support and ask:"
echo "'Do I have Node.js hosting with my plan?'"
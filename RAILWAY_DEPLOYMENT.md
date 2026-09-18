# 🚀 Railway.app Deployment Guide (Easiest Option)

## Why Railway?
- ✅ **No CLI required** - Deploy through web interface
- ✅ **GitHub integration** - Auto-deploy from your repository
- ✅ **Free tier available** - $0/month for small projects
- ✅ **Automatic SSL** - HTTPS included
- ✅ **Easy environment variables** - Set through dashboard

## 📋 Step-by-Step Deployment

### Step 1: Prepare Your Repository

1. **Create GitHub repository** (if you haven't already):
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/medicore-vault.git
   git push -u origin main
   ```

### Step 2: Deploy Backend on Railway

1. **Go to [railway.app](https://railway.app)**
2. **Sign up/Login** with GitHub
3. **Click "New Project"**
4. **Select "Deploy from GitHub repo"**
5. **Choose your medicore-vault repository**
6. **Select "backend" folder** as the root directory
7. **Railway will auto-detect Node.js** and deploy

### Step 3: Configure Environment Variables

In Railway dashboard, go to **Variables** tab and add:

```env
NODE_ENV=production
PORT=5000
MONGO_URI=mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database
JWT_SECRET=your-32-character-random-secret-key-here
FRONTEND_URL=https://medicorevault.com
WHATSAPP_ACCESS_TOKEN=your_token_here
WHATSAPP_PHONE_NUMBER_ID=your_id_here
WHATSAPP_VERIFY_TOKEN=your_verify_token_here
```

### Step 4: Get Your Backend URL

After deployment, Railway will give you a URL like:
`https://medicore-backend-production.up.railway.app`

### Step 5: Update Frontend Configuration

Update `.env.production` with your Railway backend URL:
```env
VITE_API_BASE_URL=https://your-railway-url.up.railway.app/api
```

### Step 6: Build and Deploy Frontend to GoDaddy

```bash
npm run build:production
```

Upload all files from `dist` folder to GoDaddy's `public_html` directory.

## 🎯 Complete Environment Variables List

### For Railway (Backend):
```env
NODE_ENV=production
PORT=5000
MONGO_URI=mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database
JWT_SECRET=Kj8sF3nP9qR2tY6wE4rT8uI1oP5aS7dF9gH3jK6lZ8xC2vB5nM1qW4eR7tY0uI3o
FRONTEND_URL=https://medicorevault.com
```

### For Frontend (.env.production):
```env
VITE_API_BASE_URL=https://your-railway-url.up.railway.app/api
```

## 💰 Cost Comparison

- **Railway**: $0-5/month (free tier available)
- **GoDaddy Hosting**: $5-10/month (you already have this)
- **Domain**: You already own it
- **Total**: $5-15/month

## 🧪 Testing Your Deployment

1. **Backend Test**: Visit `https://your-railway-url.up.railway.app/api/public/stats`
2. **Frontend Test**: Visit `https://medicorevault.com`

## 🔄 Updates and Maintenance

- **Backend Updates**: Push to GitHub → Railway auto-deploys
- **Frontend Updates**: Run `npm run build:production` → Upload to GoDaddy

## ✅ Deployment Checklist

- [ ] Created GitHub repository with your code
- [ ] Deployed backend to Railway
- [ ] Set all environment variables in Railway
- [ ] Updated frontend .env.production with Railway URL  
- [ ] Built production frontend (`npm run build:production`)
- [ ] Uploaded dist files to GoDaddy public_html
- [ ] Tested backend API endpoints
- [ ] Tested frontend functionality
- [ ] Verified demo form submissions work

Railway is the easiest option - no CLI installation needed, just web interface!
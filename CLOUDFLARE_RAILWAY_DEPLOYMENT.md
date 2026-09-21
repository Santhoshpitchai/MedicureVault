# 🚀 FREE Cloud Deployment Guide: Railway + Vercel + Custom Domain

## 🎯 Deploy MedicoReVault Completely FREE with Your Domain

**Total Cost:** $0/month (FREE tier limits are perfect for your project)
**Domain:** medicorevault.com (your existing GoDaddy domain)
**Performance:** Excellent (Global CDN + Fast servers)

---

## 📋 **Deployment Strategy**

- **Backend:** Railway.app (FREE - Node.js hosting)
- **Frontend:** Vercel.com (FREE - React hosting with CDN)  
- **Domain:** Connect medicorevault.com to Vercel
- **Database:** MongoDB Atlas (Already configured - FREE tier)

---

## 🚂 **STEP 1: Deploy Backend to Railway**

### **1.1 Create Railway Account**
1. Go to: **https://railway.app**
2. Click **"Start a New Project"**
3. Sign in with **GitHub** (connect your account)

### **1.2 Deploy Backend**
1. Click **"Deploy from GitHub repo"**
2. Select: **`Santhoshpitchai/medicorevault`**
3. **Root Directory:** `/backend` (IMPORTANT!)
4. Railway will auto-detect Node.js and deploy

### **1.3 Add Environment Variables**
In Railway dashboard → **Variables** tab:

```env
NODE_ENV=production
PORT=3000
MONGO_URI=mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database
JWT_SECRET=MzY4NDg5NjEyODc0MzIxNjU0OTg3MzIxNjU0OTg3MzI1NmFkZjgyMw==
FRONTEND_URL=https://medicorevault.com
WHATSAPP_ACCESS_TOKEN=your_whatsapp_token_if_needed
WHATSAPP_PHONE_NUMBER_ID=your_phone_id_if_needed  
WHATSAPP_VERIFY_TOKEN=your_verify_token_if_needed
```

### **1.4 Get Backend URL**
- Railway will give you a URL like: `https://your-app.railway.app`
- **Copy this URL** - you'll need it for frontend configuration

---

## ⚡ **STEP 2: Deploy Frontend to Vercel**

### **2.1 Create Vercel Account**
1. Go to: **https://vercel.com**
2. Sign in with **GitHub**
3. Connect your GitHub account

### **2.2 Deploy Frontend**
1. Click **"Add New Project"**
2. Select: **`Santhoshpitchai/medicorevault`** 
3. **Root Directory:** `/` (root - NOT /frontend)
4. Vercel auto-detects React/Vite project

### **2.3 Configure Environment Variables**
In Vercel dashboard → **Settings** → **Environment Variables**:

```env
VITE_API_BASE_URL=https://your-railway-backend-url.railway.app/api
VITE_FRONTEND_URL=https://medicorevault.com
```

Replace `your-railway-backend-url` with your actual Railway URL from Step 1.4.

### **2.4 Deploy**
- Click **"Deploy"** 
- Vercel will build and deploy your frontend
- You'll get a URL like: `https://your-project.vercel.app`

---

## 🌐 **STEP 3: Connect Your Custom Domain**

### **3.1 Add Domain to Vercel**
1. In Vercel dashboard → **Settings** → **Domains**
2. Add domain: **`medicorevault.com`**
3. Also add: **`www.medicorevault.com`**

### **3.2 Update DNS in GoDaddy**
1. Login to **GoDaddy** → **DNS Management** for medicorevault.com
2. **Delete existing A records** (if any)
3. **Add these DNS records:**

```
Type: CNAME
Name: www  
Value: cname.vercel-dns.com
TTL: 1 Hour

Type: A
Name: @
Value: 76.76.19.19
TTL: 1 Hour

Type: A  
Name: @
Value: 76.223.126.88
TTL: 1 Hour
```

### **3.3 SSL Certificate**
- Vercel automatically provides **FREE SSL certificate**
- Wait 10-60 minutes for DNS propagation
- Your site will be secure: **https://medicorevault.com**

---

## 🧪 **STEP 4: Test Complete Deployment**

### **Test URLs:**
- **Homepage:** https://medicorevault.com
- **API Test:** https://medicorevault.com/api/public/stats  
- **Admin Login:** https://medicorevault.com/admin
- **Demo Form:** Submit test request
- **Backend Direct:** https://your-app.railway.app/api/public/stats

### **Troubleshooting:**
1. **API not working?** → Check VITE_API_BASE_URL in Vercel
2. **Domain not loading?** → Wait for DNS (up to 24 hours)
3. **SSL error?** → Wait for Vercel SSL provisioning (automatic)

---

## 💰 **Cost Breakdown (FREE!)**

- **Railway:** FREE (500 hours/month - enough for your project)
- **Vercel:** FREE (100GB bandwidth, unlimited deployments)
- **MongoDB Atlas:** FREE (512MB storage - perfect for start)
- **Domain:** Already owned (medicorevault.com)
- **SSL Certificate:** FREE (included with Vercel)

**Total Monthly Cost:** $0 🎉

---

## 🔄 **Auto-Deployment Setup**

Both platforms auto-deploy when you push to GitHub:

- **Push to main branch** → Auto-deploys backend to Railway
- **Push to main branch** → Auto-deploys frontend to Vercel  
- **Zero maintenance** required!

---

## 🎉 **Final Result**

Your complete MedicoReVault Hospital Management System will be live at:

**🌐 https://medicorevault.com**

**Features Working:**
✅ Complete hospital management system  
✅ Admin dashboard with real-time analytics  
✅ Patient registration and records  
✅ Demo booking system  
✅ WhatsApp integration  
✅ Mobile-responsive design  
✅ SSL security  
✅ Global CDN performance  
✅ Auto-scaling infrastructure  

**Professional deployment at ZERO cost!** 🏥✨
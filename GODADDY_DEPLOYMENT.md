# 🚀 GoDaddy Deployment Guide for Medicore Vault

## 📋 Current Status
✅ **Project is ready for deployment!**
✅ **Production build created successfully**
✅ **Environment configuration files prepared**

## 🎯 Quick Start Deployment

### Step 1: Deploy Backend (Choose One Option)

#### Option A: Heroku (Recommended)
```bash
# Install Heroku CLI
brew install heroku/brew/heroku

# Login to Heroku
heroku login

# Create app
heroku create medicorevault-backend

# Set environment variables
heroku config:set NODE_ENV=production
heroku config:set JWT_SECRET="$(openssl rand -base64 32)"
heroku config:set MONGO_URI="mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database"
heroku config:set FRONTEND_URL="https://medicorevault.com"

# Deploy from backend folder
cd backend
git init
git add .
git commit -m "Deploy to Heroku"
heroku git:remote -a medicorevault-backend
git push heroku main
```

#### Option B: Railway.app (Alternative)
1. Go to railway.app and sign up
2. Connect GitHub repository
3. Select backend folder for deployment
4. Add environment variables in dashboard

### Step 2: Update Frontend Configuration

After backend deployment, note your backend URL (e.g., `https://medicorevault-backend.herokuapp.com`)

Update the frontend configuration:
```bash
# Edit .env.production
echo "VITE_API_BASE_URL=https://your-backend-url.herokuapp.com/api" > .env.production
```

### Step 3: Build and Deploy Frontend to GoDaddy

```bash
# Build for production
npm run build:production

# The files are now ready in the 'dist' folder
```

**GoDaddy Upload Process:**
1. Login to GoDaddy cPanel
2. Open File Manager
3. Navigate to `public_html` folder
4. Upload ALL files from the `dist` folder
5. Overwrite existing files if prompted

## 🔧 Environment Variables Summary

### Backend Environment Variables (Set in Heroku/Railway):
```env
NODE_ENV=production
PORT=5000
MONGO_URI=mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database
JWT_SECRET=your-generated-32-character-secret
FRONTEND_URL=https://medicorevault.com
# Optional WhatsApp variables:
WHATSAPP_ACCESS_TOKEN=your_token
WHATSAPP_PHONE_NUMBER_ID=your_id  
WHATSAPP_VERIFY_TOKEN=your_verify_token
```

### Frontend Environment Variables (Already configured):
```env
VITE_API_BASE_URL=https://your-backend-url.herokuapp.com/api
```

## 🌐 Domain Configuration

Your domain `medicorevault.com` should be configured in GoDaddy with:
1. **DNS A Record**: `@` pointing to GoDaddy hosting IP
2. **CNAME Record**: `www` pointing to `medicorevault.com`
3. **SSL Certificate**: Enabled (free with GoDaddy hosting)

## 🧪 Testing Checklist

After deployment, test these URLs:

### Backend Tests:
- `https://your-backend-url.herokuapp.com/api/public/stats` - Should return JSON data
- `https://your-backend-url.herokuapp.com/api/faqs` - Should return FAQ data

### Frontend Tests:
- `https://medicorevault.com` - Should load the homepage
- Demo form submission should work
- Login/Signup functionality should work

## 💡 Cost Breakdown

### Current Setup Cost:
- **Domain**: $12-15/year (you already have this)
- **GoDaddy Hosting**: $5-10/month (for frontend)
- **Heroku Backend**: $0/month (free tier) or $7/month (hobby tier)
- **MongoDB Atlas**: $0/month (free tier)

**Total Monthly Cost: $5-17/month**

## 🔒 Security Notes

1. **JWT Secret**: Generated randomly for security
2. **CORS**: Configured to only allow your domain
3. **Environment Variables**: Kept secure and not in code
4. **Database**: MongoDB Atlas with IP restrictions
5. **SSL**: Enabled through GoDaddy certificate

## 🆘 Common Issues & Solutions

### "API Not Found" Errors:
- Check `VITE_API_BASE_URL` matches your backend URL exactly
- Verify backend is deployed and running

### CORS Errors:
- Ensure `FRONTEND_URL` environment variable is set correctly
- Check that your domain matches exactly

### Database Connection Issues:
- Verify `MONGO_URI` is set correctly in backend
- Check MongoDB Atlas network access settings

## 📞 Next Steps After Deployment

1. **Monitor**: Check Heroku logs for any backend issues
2. **Test**: Thoroughly test all features on the live site
3. **Optimize**: Consider upgrading to paid tiers for better performance
4. **Backup**: Set up regular database backups
5. **Analytics**: Add Google Analytics for tracking

## 🎉 You're Ready!

Everything is prepared for deployment. Follow the steps above and your Medicore Vault will be live on `medicorevault.com`!

**Support**: If you encounter issues, check the logs in Heroku dashboard and GoDaddy cPanel error logs.
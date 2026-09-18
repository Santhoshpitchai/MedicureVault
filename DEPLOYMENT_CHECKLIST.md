# 📋 Deployment Checklist for Medicore Vault

## 🎯 Environment Variables You Need to Configure

### 🔧 Backend Environment Variables (Critical!)

```env
# Basic Configuration
NODE_ENV=production
PORT=5000

# Database (Already configured - keep as is)
MONGO_URI=mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database

# Security (⚠️ MUST CHANGE!)
JWT_SECRET=CHANGE_THIS_TO_A_RANDOM_SECURE_STRING_32_CHARACTERS_LONG

# Frontend URL (Update with your domain)
FRONTEND_URL=https://medicorevault.com

# WhatsApp Configuration (Optional - for WhatsApp integration)
WHATSAPP_ACCESS_TOKEN=your_whatsapp_access_token_from_meta_developers
WHATSAPP_PHONE_NUMBER_ID=your_business_phone_number_id
WHATSAPP_VERIFY_TOKEN=create_your_own_secure_verify_token
```

### 🎨 Frontend Environment Variables

```env
# API Base URL (Update after deploying backend)
VITE_API_BASE_URL=https://your-backend-deployment-url.herokuapp.com/api
```

## 🚀 Step-by-Step Deployment Process

### Phase 1: Deploy Backend First

#### Option A: Heroku (Recommended - Free Tier)
1. **Sign up at heroku.com**
2. **Install Heroku CLI**: `brew install heroku/brew/heroku`
3. **Create new app**: `heroku create medicorevault-api`
4. **Set environment variables** (replace with your values):
   ```bash
   heroku config:set NODE_ENV=production
   heroku config:set JWT_SECRET="your-32-character-random-string"
   heroku config:set MONGO_URI="mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database"
   heroku config:set FRONTEND_URL="https://medicorevault.com"
   ```
5. **Deploy backend**: 
   ```bash
   cd backend
   git init
   git add .
   git commit -m "Initial backend deployment"
   heroku git:remote -a medicorevault-api
   git push heroku main
   ```

#### Option B: Railway (Alternative)
1. Go to railway.app
2. Connect your GitHub
3. Deploy the backend folder
4. Add environment variables in dashboard

### Phase 2: Update Frontend Configuration

1. **Update .env.production** with your backend URL:
   ```env
   VITE_API_BASE_URL=https://medicorevault-api.herokuapp.com/api
   ```

### Phase 3: Deploy Frontend to GoDaddy

1. **Build the frontend**:
   ```bash
   npm run build:production
   ```

2. **Upload to GoDaddy**:
   - Login to GoDaddy cPanel
   - Go to File Manager
   - Navigate to `public_html`
   - Upload ALL files from `dist` folder
   - Overwrite existing files

## 🔐 Security Configuration

### 1. Generate JWT Secret
```bash
# Generate a secure random string
openssl rand -base64 32
```

### 2. WhatsApp Setup (Optional)
- Go to developers.facebook.com
- Create a WhatsApp Business app
- Get your access token and phone number ID
- Set up webhook URL: `https://your-backend-url.herokuapp.com/webhook`

## 🧪 Testing Your Deployment

### Backend Testing
Visit these URLs to verify backend is working:
- `https://your-backend-url.herokuapp.com/api/public/stats`
- `https://your-backend-url.herokuapp.com/api/faqs`

### Frontend Testing
- Visit `https://medicorevault.com`
- Check browser console for errors
- Test demo form submission
- Verify login/signup works

## 🌐 Domain Configuration

### DNS Settings in GoDaddy:
1. **A Record**: `@` → Your hosting IP
2. **CNAME**: `www` → `medicorevault.com`
3. **Enable SSL Certificate** (free with GoDaddy)

## ⚡ Quick Deployment Commands

### Frontend Deployment:
```bash
# From project root
npm run build:production
# Then upload dist/* to GoDaddy public_html
```

### Backend Deployment (Heroku):
```bash
# From backend folder
git add .
git commit -m "Update backend"
git push heroku main
```

## 🆘 Common Issues & Solutions

### Issue: CORS Error
**Solution**: Check FRONTEND_URL environment variable matches your domain exactly

### Issue: API calls fail
**Solution**: Verify VITE_API_BASE_URL points to correct backend URL

### Issue: Database connection fails  
**Solution**: Check MONGO_URI is set correctly in backend environment

### Issue: WhatsApp webhook fails
**Solution**: Ensure WHATSAPP_VERIFY_TOKEN matches in both Meta and backend

## 📞 Support Resources

- **Heroku Docs**: devcenter.heroku.com
- **GoDaddy Help**: support.godaddy.com  
- **MongoDB Atlas**: docs.atlas.mongodb.com
- **WhatsApp Business API**: developers.facebook.com/docs/whatsapp

---

## ✅ Final Checklist Before Going Live

- [ ] Backend deployed and accessible
- [ ] Frontend built and uploaded to GoDaddy  
- [ ] Domain pointing to correct hosting
- [ ] SSL certificate enabled
- [ ] Environment variables configured
- [ ] Database connection working
- [ ] API endpoints responding
- [ ] Demo form submissions working
- [ ] Admin login functional

**🎉 Once all items are checked, your Medicore Vault is live!**
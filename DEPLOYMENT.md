# Medicore Vault Deployment Guide

## 🚀 Deployment Strategy

### Frontend: GoDaddy Shared Hosting
### Backend: Cloud Service (Heroku/Railway/DigitalOcean)

## 📋 Pre-Deployment Checklist

### 1. Backend Deployment (Deploy First)

#### Option A: Deploy to Heroku (Free Tier Available)
1. Install Heroku CLI: `brew install heroku/brew/heroku`
2. Login: `heroku login`
3. Create app: `heroku create medicorevault-api`
4. Set environment variables:
   ```bash
   heroku config:set NODE_ENV=production
   heroku config:set MONGO_URI="your-mongodb-uri"
   heroku config:set JWT_SECRET="your-super-secure-jwt-secret"
   heroku config:set FRONTEND_URL="https://medicorevault.com"
   heroku config:set WHATSAPP_ACCESS_TOKEN="your-token"
   heroku config:set WHATSAPP_PHONE_NUMBER_ID="your-id"
   heroku config:set WHATSAPP_VERIFY_TOKEN="your-verify-token"
   ```
5. Deploy: `git subtree push --prefix backend heroku main`

#### Option B: Deploy to Railway
1. Visit railway.app and sign up
2. Connect your GitHub repository
3. Select the backend folder
4. Add environment variables in Railway dashboard
5. Deploy automatically

#### Option C: Deploy to DigitalOcean App Platform
1. Visit cloud.digitalocean.com
2. Create new App from GitHub
3. Select backend folder
4. Configure environment variables
5. Deploy

### 2. Update Frontend Configuration

After backend is deployed, update:
```bash
# In .env.production
VITE_API_BASE_URL=https://your-deployed-backend-url/api
```

### 3. Build Frontend for GoDaddy

```bash
npm run build:production
```

### 4. Upload to GoDaddy

1. Login to GoDaddy cPanel
2. Go to File Manager
3. Navigate to public_html folder
4. Upload all files from the `dist` folder
5. Extract if compressed

## 🔧 Environment Variables Required

### Backend (.env or hosting service config):
```env
NODE_ENV=production
PORT=5000
MONGO_URI=mongodb+srv://admin_db_user:rxwidEaMG5HDqt9M@database.zaoqibx.mongodb.net/?appName=database
JWT_SECRET=your-super-secure-jwt-secret-change-this
WHATSAPP_ACCESS_TOKEN=your_whatsapp_token
WHATSAPP_PHONE_NUMBER_ID=your_phone_number_id
WHATSAPP_VERIFY_TOKEN=your_verify_token
FRONTEND_URL=https://medicorevault.com
```

### Frontend (.env.production):
```env
VITE_API_BASE_URL=https://your-backend-url.herokuapp.com/api
```

## 🌐 DNS Configuration in GoDaddy

1. Login to GoDaddy Domain Management
2. Manage DNS for medicorevault.com
3. Ensure these records exist:
   - A Record: @ points to your hosting IP
   - CNAME Record: www points to medicorevault.com
   - (Optional) CNAME Record: api points to your backend service

## 🔒 Security Considerations

1. **Change JWT_SECRET**: Use a strong, random secret key
2. **Update CORS origins**: Ensure only your domain is allowed
3. **Environment Variables**: Never commit .env files to Git
4. **Database Security**: Ensure MongoDB Atlas IP whitelist is configured
5. **SSL Certificate**: GoDaddy provides free SSL - enable it

## 🧪 Testing Deployment

### Frontend Tests:
- Visit https://medicorevault.com
- Check browser console for errors
- Test demo form submission
- Verify WhatsApp widget works

### Backend Tests:
- Visit https://your-backend-url/api/public/stats
- Test login/signup functionality
- Verify database connections
- Check WhatsApp webhook endpoint

## 🔄 Update Process

### Frontend Updates:
1. Make changes locally
2. Run `npm run build:production`
3. Upload new dist files to GoDaddy

### Backend Updates:
1. Push changes to Git
2. Deploy to your cloud service
3. Monitor logs for issues

## 📞 Support

If you encounter issues:
1. Check browser console for frontend errors
2. Check hosting service logs for backend errors
3. Verify all environment variables are set correctly
4. Test API endpoints individually
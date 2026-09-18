# 🏥 Medicore Vault - Complete Hospital Management System

A modern, full-stack Hospital Management System built with React and Node.js.

## 🎯 Live Demo
- **Website**: https://medicorevault.com
- **Admin Dashboard**: https://medicorevault.com/admin

## 🚀 Features

### � Frontend (React + Vite + Tailwind)
- ✅ Modern responsive landing page
- ✅ Admin dashboard with analytics
- ✅ User authentication (Login/Signup)
- ✅ Demo booking system
- ✅ WhatsApp integration widget
- ✅ Interactive FAQ section
- ✅ Mobile-optimized design

### ⚡ Backend (Node.js + Express + MongoDB)
- ✅ RESTful API architecture
- ✅ JWT authentication
- ✅ MongoDB Atlas database
- ✅ User & hospital management
- ✅ Patient records system
- ✅ WhatsApp Business API integration
- ✅ Demo request handling
- ✅ Real-time analytics

## 🏗️ Tech Stack

### Frontend
- **Framework**: React 19.2.6
- **Build Tool**: Vite 8.0.12
- **Styling**: Tailwind CSS 4.3.0
- **Icons**: Lucide React
- **Charts**: Recharts
- **Routing**: React Router DOM

### Backend
- **Runtime**: Node.js 18+
- **Framework**: Express.js 5.2.1
- **Database**: MongoDB Atlas
- **ODM**: Mongoose 9.6.3
- **Authentication**: JWT + bcryptjs
- **HTTP Client**: Axios
- **CORS**: Enabled

## 🚀 Quick Start

### Prerequisites
- Node.js 18 or higher
- MongoDB Atlas account
- (Optional) WhatsApp Business API credentials

### 1. Clone Repository
```bash
git clone https://github.com/Santhoshpitchai/medicorevault.git
cd medicorevault
```

### 2. Install Dependencies
```bash
# Install frontend dependencies
npm install

# Install backend dependencies
cd backend
npm install
```

### 3. Environment Setup

#### Frontend (.env.production)
```env
VITE_API_BASE_URL=http://localhost:5000/api
```

#### Backend (.env)
```env
NODE_ENV=development
PORT=5000
MONGO_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret
FRONTEND_URL=http://localhost:5173
WHATSAPP_ACCESS_TOKEN=your_whatsapp_token
WHATSAPP_PHONE_NUMBER_ID=your_phone_id
WHATSAPP_VERIFY_TOKEN=your_verify_token
```

### 4. Run Development Servers

#### Backend (Terminal 1)
```bash
cd backend
npm start
```

#### Frontend (Terminal 2)
```bash
npm run dev
```

### 5. Seed Database (Optional)
```bash
cd backend
node seed.js
```

## 🌐 Deployment

### Production Deployment Options

#### Option 1: Railway + GoDaddy (Recommended)
- **Backend**: Deploy to Railway.app (free tier)
- **Frontend**: Build and upload to GoDaddy hosting
- **Cost**: $0 - $10/month

#### Option 2: Full Node.js Hosting
- **Platform**: GoDaddy Node.js hosting, Heroku, or Vercel
- **Setup**: Single full-stack deployment
- **Cost**: $5 - $25/month

### Build Commands
```bash
# Build frontend for production
npm run build:production

# Build complete deployment package
./build-for-godaddy.sh
```

## 📁 Project Structure

```
medicorevault/
├── backend/                 # Node.js backend
│   ├── models.js           # MongoDB schemas
│   ├── server.js           # Express server
│   ├── chatbot.js          # AI chatbot logic
│   ├── whatsappService.js  # WhatsApp integration
│   └── seed.js             # Database seeder
├── src/                    # React frontend
│   ├── components/         # UI components
│   ├── config/            # API configuration
│   ├── main.jsx           # App entry point
│   └── index.css          # Global styles
├── public/                # Static assets
└── docs/                  # Deployment guides
```

## 🔧 API Endpoints

### Authentication
- `POST /api/auth/signup` - User registration
- `POST /api/auth/login` - User login

### Public APIs
- `GET /api/public/stats` - Public statistics
- `GET /api/faqs` - FAQ list
- `GET /api/modules` - System modules
- `GET /api/features` - Feature list
- `GET /api/testimonials` - User testimonials
- `POST /api/demo` - Demo booking

### Protected APIs
- `GET /api/admin/stats` - Admin analytics
- `GET /api/records` - Patient records
- `POST /api/records` - Create patient record
- `GET /api/hospitals` - Hospital list

### WhatsApp Integration
- `GET /webhook` - Webhook verification
- `POST /webhook` - Receive messages
- `POST /api/chat` - Web chatbot

## 🧪 Testing

### Frontend
```bash
npm run lint
npm run preview
```

### Backend
```bash
cd backend
npm start
# Test endpoints at http://localhost:5000/api/
```

## 🔒 Security Features

- ✅ JWT token authentication
- ✅ Password hashing (bcryptjs)
- ✅ CORS protection
- ✅ Input validation
- ✅ Environment variable protection
- ✅ MongoDB injection prevention

## 📊 Analytics & Monitoring

- Real-time dashboard metrics
- Patient admission trends
- Department performance tracking
- Revenue analytics
- User engagement metrics

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the ISC License.

## 📞 Support

- **Email**: support@medicorevault.com
- **Issues**: GitHub Issues
- **Documentation**: /docs folder

## 🎉 Acknowledgments

- Built with ❤️ for healthcare professionals
- Designed for scalability and performance
- Modern tech stack for reliability
- Mobile-first responsive design

---

**Made with 💙 by the MedicoReVault Team**
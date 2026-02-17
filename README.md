# Sai Ram Burri - Portfolio Website

A modern, responsive portfolio website built with React and Vite showcasing my skills, projects, and experience as a Full Stack Developer.

## 🚀 Features

- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile devices
- **Modern UI/UX**: Clean and professional design with smooth animations
- **Interactive Components**: Dynamic tech stack visualization, animated timelines, and more
- **Resume Download**: Direct download button for my resume
- **Contact Form**: Easy way for recruiters and clients to get in touch
- **Optimized Performance**: Built with Vite for fast loading and optimal performance

## 🛠️ Tech Stack

- **React 18**: Modern React with hooks
- **Vite**: Next-generation frontend tooling
- **CSS3**: Custom styling with animations and transitions
- **GitHub Pages**: Deployment platform

## 📦 Installation

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/portfolio.git
cd portfolio
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

The site will be available at `http://localhost:5173`

## 🏗️ Build for Production

To create a production build:

```bash
npm run build
```

The built files will be in the `dist` directory.

## 🚀 Deploy to GitHub Pages

1. Update the `base` property in `vite.config.js` to match your GitHub repository name:
```javascript
base: '/your-repo-name/',
```

2. Deploy using:
```bash
npm run deploy
```

This will build your site and deploy it to GitHub Pages.

## 📂 Project Structure

```
portfolio-react/
├── public/              # Static assets
├── src/
│   ├── assets/          # Images, PDFs, etc.
│   ├── components/      # React components
│   │   ├── Navbar.jsx
│   │   ├── Hero.jsx
│   │   ├── Education.jsx
│   │   ├── Skills.jsx
│   │   ├── Projects.jsx
│   │   ├── Experience.jsx
│   │   ├── Contact.jsx
│   │   └── Footer.jsx
│   ├── App.jsx          # Main App component
│   ├── App.css          # Global styles
│   ├── main.jsx         # Entry point
│   └── index.css        # CSS variables and animations
├── index.html           # HTML template
├── package.json         # Dependencies and scripts
├── vite.config.js       # Vite configuration
└── README.md            # This file
```

## 🎨 Sections

1. **Hero**: Introduction with tech stack visualization
2. **Education**: Academic background and coursework
3. **Skills**: Technical skills organized by category
4. **Projects**: Featured projects with descriptions
5. **Experience**: Work experience timeline
6. **Contact**: Contact information and form

## 📱 Responsive Breakpoints

- Desktop: 968px and above
- Tablet: 640px - 968px
- Mobile: Below 640px

## 🔧 Customization

To customize for your own use:

1. Update personal information in each component
2. Replace the resume PDF in `src/assets/`
3. Modify colors in `src/index.css` (CSS variables)
4. Update social media links in `Footer.jsx`
5. Add your own projects in `Projects.jsx`

## 📄 License

This project is open source and available under the MIT License.

## 👤 Author

**Sai Ram Burri**
- LinkedIn: [linkedin.com/in/sai-ram-burri](https://www.linkedin.com/in/sai-ram-burri)
- Email: burrisairam2000@gmail.com
- Location: Ottawa, ON, Canada

---

⭐ If you like this portfolio, feel free to star this repository!

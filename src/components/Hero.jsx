import React from 'react'
import './Hero.css'
import resumePDF from '../assets/Resume_SAI.pdf'

const Hero = () => {
  return (
    <section id="home" className="hero">
      <div className="container">
        <div className="hero-content">
          <div className="hero-text">
            <span className="hero-label">Full Stack Developer</span>
            <h1>Hi, I'm <span className="gradient-text">Sai Ram Burri</span></h1>
            <p className="hero-description">
              Master's student in Full Stack Development with hands-on experience in Azure DevOps, 
              AWS cloud technologies, and modern web development. I build scalable, intelligent applications 
              that solve real-world problems.
            </p>
            <div className="cta-buttons">
              <a href="#projects" className="btn btn-primary">View My Work</a>
              <a href={resumePDF} download="SaiRam_Burri_Resume.pdf" className="btn btn-secondary">
                📄 Download Resume
              </a>
            </div>
            <div className="hero-stats">
              <div className="stat">
                <div className="stat-number">3+</div>
                <div className="stat-label">Years Experience</div>
              </div>
              <div className="stat">
                <div className="stat-number">10+</div>
                <div className="stat-label">Projects Built</div>
              </div>
              <div className="stat">
                <div className="stat-number">6+</div>
                <div className="stat-label">Certifications</div>
              </div>
            </div>
          </div>
          <div className="hero-visual">
            <div className="tech-stack-card">
              <div className="stack-header">
                <div className="stack-icon">⚡</div>
                <div className="stack-title">Tech Stack</div>
              </div>
              <div className="stack-layers">
                <div className="stack-layer">
                  <div className="layer-icon">🎨</div>
                  <div className="layer-content">
                    <div className="layer-title">Frontend</div>
                    <div className="layer-tech">React • HTML • CSS • JavaScript</div>
                    <div className="progress-bar">
                      <div className="progress-fill" style={{width: '90%'}}></div>
                    </div>
                  </div>
                </div>
                <div className="stack-layer">
                  <div className="layer-icon">⚙️</div>
                  <div className="layer-content">
                    <div className="layer-title">Backend</div>
                    <div className="layer-tech">Node.js • Python • Java • Express</div>
                    <div className="progress-bar">
                      <div className="progress-fill" style={{width: '85%'}}></div>
                    </div>
                  </div>
                </div>
                <div className="stack-layer">
                  <div className="layer-icon">🗄️</div>
                  <div className="layer-content">
                    <div className="layer-title">Database</div>
                    <div className="layer-tech">MySQL • DynamoDB • MongoDB</div>
                    <div className="progress-bar">
                      <div className="progress-fill" style={{width: '80%'}}></div>
                    </div>
                  </div>
                </div>
                <div className="stack-layer">
                  <div className="layer-icon">☁️</div>
                  <div className="layer-content">
                    <div className="layer-title">Cloud & DevOps</div>
                    <div className="layer-tech">AWS • Azure • CI/CD • Docker</div>
                    <div className="progress-bar">
                      <div className="progress-fill" style={{width: '85%'}}></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}

export default Hero

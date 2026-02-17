#!/bin/bash

# Experience Component
cat > src/components/Experience.jsx << 'EOF'
import React from 'react'
import './Experience.css'

const Experience = () => {
  const experiences = [
    {
      year: '2023-2024',
      title: 'Azure DevOps Trainee',
      company: 'Cognizant Technologies • Chennai, India',
      period: 'January 2023 - May 2024',
      points: [
        'Gained hands-on experience with Azure DevOps, focusing on CI/CD pipelines and Git version control',
        'Automated build and release pipelines, ensuring seamless testing and deployment processes',
        'Collaborated with cross-functional teams to configure infrastructure and optimize workflows'
      ]
    },
    {
      year: '2022',
      title: 'Python Programming Trainee',
      company: 'APSSDC • India',
      period: 'March 2022 - June 2022',
      points: [
        'Completed intensive online summer internship focused on real-time Python applications',
        'Gained practical experience in core Python concepts and generated weekly progress reports',
        'Developed strong technical skills and understanding of organizational workflows'
      ]
    },
    {
      year: '2021',
      title: 'AWS Cloud Virtual Intern',
      company: 'AICTE • India',
      period: 'October 2021 - December 2021',
      points: [
        'Explored AWS cloud-based products in compute, storage, databases, and analytics',
        'Worked with on-demand, pay-as-you-go cloud solutions',
        'Developed strong understanding of cloud infrastructure for scalable solutions'
      ]
    }
  ]

  return (
    <section id="experience">
      <div className="container">
        <div className="section-header">
          <span className="section-label">Career Journey</span>
          <h2>Experience</h2>
          <p className="section-description">
            Professional experience in DevOps, cloud computing, and software development
          </p>
        </div>
        <div className="timeline">
          {experiences.map((exp, index) => (
            <div key={index} className="timeline-item">
              <div className="timeline-year">{exp.year}</div>
              <div className="timeline-dot"></div>
              <div className="timeline-content">
                <div className="timeline-header">
                  <h3>{exp.title}</h3>
                  <p className="timeline-company">{exp.company}</p>
                  <p className="timeline-period">{exp.period}</p>
                </div>
                <div className="timeline-description">
                  <ul>
                    {exp.points.map((point, i) => (
                      <li key={i}>{point}</li>
                    ))}
                  </ul>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}

export default Experience
EOF

# Experience CSS
cat > src/components/Experience.css << 'EOF'
.timeline {
  max-width: 1000px;
  margin: 0 auto;
  position: relative;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  width: 2px;
  height: 100%;
  background: linear-gradient(to bottom, var(--accent-primary), var(--accent-secondary));
}

.timeline-item {
  position: relative;
  margin-bottom: 4rem;
  animation: fadeInUp 0.8s ease-out both;
}

.timeline-item:nth-child(1) { animation-delay: 0.1s; }
.timeline-item:nth-child(2) { animation-delay: 0.2s; }
.timeline-item:nth-child(3) { animation-delay: 0.3s; }

.timeline-item:nth-child(odd) .timeline-content {
  margin-left: auto;
  margin-right: 0;
  width: calc(50% - 3rem);
}

.timeline-item:nth-child(even) .timeline-content {
  margin-left: 0;
  margin-right: auto;
  width: calc(50% - 3rem);
}

.timeline-content {
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 2rem;
  position: relative;
  transition: all 0.3s ease;
}

.timeline-content:hover {
  border-color: var(--accent-primary);
  box-shadow: 0 10px 40px rgba(0, 217, 255, 0.2);
  transform: scale(1.02);
}

.timeline-dot {
  position: absolute;
  left: 50%;
  top: 2rem;
  transform: translateX(-50%);
  width: 16px;
  height: 16px;
  background: var(--accent-primary);
  border: 4px solid var(--bg-primary);
  border-radius: 50%;
  z-index: 2;
}

.timeline-year {
  position: absolute;
  left: 50%;
  top: 0;
  transform: translateX(-50%);
  background: var(--bg-card);
  border: 2px solid var(--accent-primary);
  padding: 0.5rem 1rem;
  border-radius: 50px;
  font-weight: 700;
  font-size: 0.9rem;
  color: var(--accent-primary);
  white-space: nowrap;
  z-index: 3;
}

.timeline-header {
  margin-bottom: 1rem;
}

.timeline-content h3 {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
}

.timeline-company {
  color: var(--accent-primary);
  font-weight: 600;
  margin-bottom: 0.25rem;
}

.timeline-period {
  font-size: 0.9rem;
  color: var(--text-muted);
  font-family: 'JetBrains Mono', monospace;
}

.timeline-description {
  color: var(--text-secondary);
  line-height: 1.6;
}

.timeline-description ul {
  list-style: none;
  margin-top: 1rem;
}

.timeline-description li {
  padding-left: 1.5rem;
  margin-bottom: 0.5rem;
  position: relative;
}

.timeline-description li::before {
  content: '▹';
  position: absolute;
  left: 0;
  color: var(--accent-primary);
}

@media (max-width: 968px) {
  .timeline::before {
    left: 20px;
  }

  .timeline-dot {
    left: 20px;
  }

  .timeline-year {
    left: 70px;
    transform: none;
  }

  .timeline-item:nth-child(odd) .timeline-content,
  .timeline-item:nth-child(even) .timeline-content {
    margin-left: 70px;
    width: calc(100% - 70px);
  }
}
EOF

# Contact Component
cat > src/components/Contact.jsx << 'EOF'
import React, { useState } from 'react'
import './Contact.css'

const Contact = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    message: ''
  })

  const handleSubmit = (e) => {
    e.preventDefault()
    alert('Thank you for your message! I\'ll get back to you soon.')
    setFormData({ name: '', email: '', message: '' })
  }

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value
    })
  }

  return (
    <section id="contact">
      <div className="container">
        <div className="section-header">
          <span className="section-label">Get In Touch</span>
          <h2>Let's Connect</h2>
          <p className="section-description">
            I'm currently seeking opportunities for full-stack development roles. Let's discuss how I can contribute to your team!
          </p>
        </div>
        <div className="contact-grid">
          <div className="contact-info">
            <div className="contact-methods">
              <a href="mailto:burrisairam2000@gmail.com" className="contact-method">
                <div className="contact-icon">📧</div>
                <div className="contact-details">
                  <h4>Email</h4>
                  <p>burrisairam2000@gmail.com</p>
                </div>
              </a>
              <a href="tel:+13435528696" className="contact-method">
                <div className="contact-icon">📱</div>
                <div className="contact-details">
                  <h4>Phone</h4>
                  <p>+1 343-552-8696</p>
                </div>
              </a>
              <a href="https://www.linkedin.com/in/sai-ram-burri" target="_blank" rel="noopener noreferrer" className="contact-method">
                <div className="contact-icon">💼</div>
                <div className="contact-details">
                  <h4>LinkedIn</h4>
                  <p>linkedin.com/in/sai-ram-burri</p>
                </div>
              </a>
              <div className="contact-method">
                <div className="contact-icon">📍</div>
                <div className="contact-details">
                  <h4>Location</h4>
                  <p>Ottawa, ON, Canada</p>
                </div>
              </div>
            </div>
          </div>
          <div className="contact-form">
            <h3 style={{marginBottom: '1.5rem'}}>Send a Message</h3>
            <form onSubmit={handleSubmit}>
              <div className="form-group">
                <label htmlFor="name">Name</label>
                <input
                  type="text"
                  id="name"
                  name="name"
                  value={formData.name}
                  onChange={handleChange}
                  placeholder="Your name"
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="email">Email</label>
                <input
                  type="email"
                  id="email"
                  name="email"
                  value={formData.email}
                  onChange={handleChange}
                  placeholder="your.email@example.com"
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="message">Message</label>
                <textarea
                  id="message"
                  name="message"
                  value={formData.message}
                  onChange={handleChange}
                  placeholder="Your message..."
                  required
                />
              </div>
              <button type="submit" className="btn btn-primary" style={{width: '100%'}}>
                Send Message
              </button>
            </form>
          </div>
        </div>
      </div>
    </section>
  )
}

export default Contact
EOF

# Contact CSS
cat > src/components/Contact.css << 'EOF'
.contact-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 3rem;
  align-items: center;
}

.contact-info {
  animation: fadeInUp 0.8s ease-out both;
}

.contact-methods {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  margin-top: 2rem;
}

.contact-method {
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 1.5rem;
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 12px;
  transition: all 0.3s ease;
  text-decoration: none;
  color: var(--text-primary);
}

.contact-method:hover {
  border-color: var(--accent-primary);
  transform: translateX(10px);
  background: rgba(0, 217, 255, 0.05);
}

.contact-icon {
  width: 50px;
  height: 50px;
  background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  flex-shrink: 0;
}

.contact-details h4 {
  font-size: 1.1rem;
  margin-bottom: 0.25rem;
}

.contact-details p {
  color: var(--text-secondary);
  font-size: 0.9rem;
}

.contact-form {
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 2.5rem;
  animation: fadeInUp 0.8s ease-out 0.2s both;
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-group label {
  display: block;
  margin-bottom: 0.5rem;
  font-weight: 600;
  color: var(--text-primary);
}

.form-group input,
.form-group textarea {
  width: 100%;
  padding: 1rem;
  background: var(--bg-secondary);
  border: 1px solid var(--border);
  border-radius: 8px;
  color: var(--text-primary);
  font-family: inherit;
  font-size: 1rem;
  transition: all 0.3s ease;
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: var(--accent-primary);
  box-shadow: 0 0 0 3px rgba(0, 217, 255, 0.1);
}

.form-group textarea {
  resize: vertical;
  min-height: 120px;
}

@media (max-width: 968px) {
  .contact-grid {
    grid-template-columns: 1fr;
  }
}
EOF

# Footer Component
cat > src/components/Footer.jsx << 'EOF'
import React from 'react'
import './Footer.css'

const Footer = () => {
  return (
    <footer>
      <div className="container">
        <div className="footer-content">
          <div className="logo">SRB</div>
          <div className="social-links">
            <a href="https://www.linkedin.com/in/sai-ram-burri" target="_blank" rel="noopener noreferrer" className="social-link" title="LinkedIn">💼</a>
            <a href="mailto:burrisairam2000@gmail.com" className="social-link" title="Email">📧</a>
            <a href="https://github.com" target="_blank" rel="noopener noreferrer" className="social-link" title="GitHub">💻</a>
          </div>
        </div>
        <p className="copyright">© 2026 Sai Ram Burri. All rights reserved.</p>
      </div>
    </footer>
  )
}

export default Footer
EOF

# Footer CSS
cat > src/components/Footer.css << 'EOF'
footer {
  background: var(--bg-secondary);
  border-top: 1px solid var(--border);
  padding: 3rem 0;
  text-align: center;
}

.footer-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 2rem;
}

.social-links {
  display: flex;
  gap: 1rem;
}

.social-link {
  width: 45px;
  height: 45px;
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--text-secondary);
  text-decoration: none;
  transition: all 0.3s ease;
  font-size: 1.2rem;
}

.social-link:hover {
  background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
  color: white;
  transform: translateY(-3px);
  box-shadow: 0 5px 20px rgba(0, 217, 255, 0.3);
}

.copyright {
  color: var(--text-muted);
  font-size: 0.9rem;
}

@media (max-width: 968px) {
  .footer-content {
    flex-direction: column;
    gap: 2rem;
  }
}
EOF

echo "All remaining components created"

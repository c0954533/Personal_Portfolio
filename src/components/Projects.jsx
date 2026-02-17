import React from 'react'
import './Projects.css'

const Projects = () => {
  const projects = [
    {
      icon: '☁️',
      title: 'VisionAI',
      date: 'Oct 2025 - Jan 2026',
      description: 'Cloud-based image analysis system using AWS services (S3, Rekognition, DynamoDB). Built a three-tier web application with React frontend and Node.js backend that demonstrates scalable AI-powered image recognition with 95%+ confidence scores.',
      tags: ['React', 'Node.js', 'AWS', 'Rekognition', 'DynamoDB']
    },
    {
      icon: '🛒',
      title: 'E-Commerce Platform',
      date: 'Sep 2024 - Jan 2025',
      description: 'Developed a fully responsive e-commerce website for kettle products featuring user authentication, product management, shopping cart, and secure checkout system with optimized database design.',
      tags: ['HTML/CSS', 'JavaScript', 'Python', 'MySQL']
    },
    {
      icon: '🔊',
      title: 'Telugu Speech Recognition',
      date: 'Nov 2023 - Feb 2024',
      description: 'Built a CNN-based speech recognition system to classify Telugu digits (0-9) using MFCC feature extraction. Achieved high accuracy with TensorFlow, demonstrating expertise in deep learning and audio processing.',
      tags: ['Python', 'TensorFlow', 'CNN', 'Librosa']
    }
  ]

  return (
    <section id="projects">
      <div className="container">
        <div className="section-header">
          <span className="section-label">Featured Work</span>
          <h2>Projects</h2>
          <p className="section-description">
            Real-world applications showcasing full-stack development capabilities
          </p>
        </div>
        <div className="projects-grid">
          {projects.map((project, index) => (
            <div key={index} className="project-card">
              <div className="project-image">{project.icon}</div>
              <div className="project-content">
                <div className="project-header">
                  <div>
                    <h3>{project.title}</h3>
                    <p className="project-date">{project.date}</p>
                  </div>
                </div>
                <p className="project-description">{project.description}</p>
                <div className="project-tags">
                  {project.tags.map((tag, i) => (
                    <span key={i} className="project-tag">{tag}</span>
                  ))}
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}

export default Projects

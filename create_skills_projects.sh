#!/bin/bash

# Skills Component
cat > src/components/Skills.jsx << 'EOF'
import React from 'react'
import './Skills.css'

const Skills = () => {
  const skillCategories = [
    {
      icon: '💻',
      title: 'Programming',
      skills: ['Python', 'Java', 'JavaScript', 'C#', 'SQL']
    },
    {
      icon: '🎨',
      title: 'Frontend Development',
      skills: ['HTML5', 'CSS3', 'React', 'JavaScript', 'Responsive Design', 'Vite']
    },
    {
      icon: '⚙️',
      title: 'Backend & Database',
      skills: ['Node.js', 'Express.js', 'MySQL', 'DynamoDB', 'REST APIs']
    },
    {
      icon: '☁️',
      title: 'Cloud & DevOps',
      skills: ['Azure DevOps', 'AWS (S3, Rekognition)', 'CI/CD Pipelines', 'Git', 'Docker']
    }
  ]

  return (
    <section id="skills">
      <div className="container">
        <div className="section-header">
          <span className="section-label">Technical Arsenal</span>
          <h2>Skills & Technologies</h2>
          <p className="section-description">
            A comprehensive toolkit for building modern, scalable applications
          </p>
        </div>
        <div className="skills-grid">
          {skillCategories.map((category, index) => (
            <div key={index} className="skill-category">
              <div className="skill-icon">{category.icon}</div>
              <h3>{category.title}</h3>
              <div className="skill-list">
                {category.skills.map((skill, i) => (
                  <span key={i} className="skill-tag">{skill}</span>
                ))}
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}

export default Skills
EOF

# Skills CSS
cat > src/components/Skills.css << 'EOF'
.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.skill-category {
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 2rem;
  transition: all 0.3s ease;
  animation: fadeInUp 0.8s ease-out both;
}

.skill-category:nth-child(1) { animation-delay: 0.1s; }
.skill-category:nth-child(2) { animation-delay: 0.2s; }
.skill-category:nth-child(3) { animation-delay: 0.3s; }
.skill-category:nth-child(4) { animation-delay: 0.4s; }

.skill-category:hover {
  transform: translateY(-5px);
  border-color: var(--accent-primary);
  box-shadow: 0 10px 40px rgba(0, 217, 255, 0.2);
}

.skill-icon {
  width: 50px;
  height: 50px;
  background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  margin-bottom: 1.5rem;
}

.skill-category h3 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
  font-weight: 700;
}

.skill-list {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
}

.skill-tag {
  padding: 0.5rem 1rem;
  background: rgba(0, 217, 255, 0.1);
  border: 1px solid rgba(0, 217, 255, 0.2);
  border-radius: 8px;
  font-size: 0.9rem;
  color: var(--text-secondary);
  font-weight: 500;
  transition: all 0.3s ease;
}

.skill-tag:hover {
  background: rgba(0, 217, 255, 0.2);
  color: var(--accent-primary);
  transform: translateY(-2px);
}

@media (max-width: 640px) {
  .skills-grid {
    grid-template-columns: 1fr;
  }
}
EOF

# Projects Component
cat > src/components/Projects.jsx << 'EOF'
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
EOF

# Projects CSS
cat > src/components/Projects.css << 'EOF'
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
  gap: 2rem;
}

.project-card {
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 16px;
  overflow: hidden;
  transition: all 0.3s ease;
  animation: fadeInUp 0.8s ease-out both;
}

.project-card:nth-child(1) { animation-delay: 0.1s; }
.project-card:nth-child(2) { animation-delay: 0.2s; }
.project-card:nth-child(3) { animation-delay: 0.3s; }

.project-card:hover {
  transform: translateY(-8px);
  box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
  border-color: var(--accent-primary);
}

.project-image {
  height: 200px;
  background: linear-gradient(135deg, rgba(0, 217, 255, 0.2), rgba(124, 58, 237, 0.2));
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 3rem;
  position: relative;
  overflow: hidden;
}

.project-image::before {
  content: '';
  position: absolute;
  top: -50%;
  left: -50%;
  width: 200%;
  height: 200%;
  background: linear-gradient(
    45deg,
    transparent,
    rgba(255, 255, 255, 0.1),
    transparent
  );
  transform: rotate(45deg);
  animation: shimmer 3s infinite;
}

.project-content {
  padding: 2rem;
}

.project-header {
  display: flex;
  justify-content: space-between;
  align-items: start;
  margin-bottom: 1rem;
}

.project-card h3 {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
}

.project-date {
  font-size: 0.85rem;
  color: var(--text-muted);
  font-family: 'JetBrains Mono', monospace;
}

.project-description {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.6;
}

.project-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.project-tag {
  padding: 0.4rem 0.8rem;
  background: rgba(124, 58, 237, 0.1);
  border: 1px solid rgba(124, 58, 237, 0.2);
  border-radius: 6px;
  font-size: 0.8rem;
  color: var(--accent-secondary);
  font-weight: 500;
}

@media (max-width: 968px) {
  .projects-grid {
    grid-template-columns: 1fr;
  }
}
EOF

echo "Skills and Projects components created"

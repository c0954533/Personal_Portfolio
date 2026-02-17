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

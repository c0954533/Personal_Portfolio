#!/bin/bash

# Create Education Component
cat > src/components/Education.jsx << 'EOF'
import React from 'react'
import './Education.css'

const Education = () => {
  return (
    <section id="education">
      <div className="container">
        <div className="section-header">
          <span className="section-label">Academic Background</span>
          <h2>Education</h2>
          <p className="section-description">
            Strong foundation in computer science and full-stack development
          </p>
        </div>
        <div className="education-grid">
          <div className="education-card">
            <div className="education-header">
              <div className="education-icon">🎓</div>
              <div className="education-info">
                <h3>Master's in Full Stack Development</h3>
                <p className="education-school">Lambton College, Ottawa, Canada</p>
                <p className="education-period">August 2024 - March 2026</p>
              </div>
            </div>
            <div className="education-gpa">GPA: 3.6/4.0</div>
            <div className="education-courses">
              <h4>Key Courses</h4>
              <div className="course-tags">
                <span className="course-tag">Data Structures & Algorithms</span>
                <span className="course-tag">Cloud Computing</span>
                <span className="course-tag">HTML/CSS/JavaScript</span>
                <span className="course-tag">Database Management</span>
                <span className="course-tag">Python Programming</span>
                <span className="course-tag">Java</span>
                <span className="course-tag">C#</span>
                <span className="course-tag">Frontend Development</span>
              </div>
            </div>
          </div>
          <div className="education-card">
            <div className="education-header">
              <div className="education-icon">🎓</div>
              <div className="education-info">
                <h3>B.Tech in Computer Science</h3>
                <p className="education-school">LBRCE, India</p>
                <p className="education-period">August 2019 - April 2023</p>
              </div>
            </div>
            <div className="education-gpa">GPA: 8.68/10</div>
            <div className="education-courses">
              <h4>Key Courses</h4>
              <div className="course-tags">
                <span className="course-tag">Python Programming</span>
                <span className="course-tag">Design & Analysis of Algorithms</span>
                <span className="course-tag">OOP through Java</span>
                <span className="course-tag">Database Management</span>
                <span className="course-tag">Big Data Analysis</span>
                <span className="course-tag">Machine Learning</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}

export default Education
EOF

# Create Education CSS
cat > src/components/Education.css << 'EOF'
.education-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(450px, 1fr));
  gap: 2rem;
  max-width: 1000px;
  margin: 0 auto;
}

.education-card {
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 2.5rem;
  transition: all 0.3s ease;
  animation: fadeInUp 0.8s ease-out both;
  position: relative;
  overflow: hidden;
}

.education-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 4px;
  background: linear-gradient(90deg, var(--accent-primary), var(--accent-secondary));
}

.education-card:nth-child(1) { animation-delay: 0.1s; }
.education-card:nth-child(2) { animation-delay: 0.2s; }

.education-card:hover {
  transform: translateY(-5px);
  border-color: var(--accent-primary);
  box-shadow: 0 10px 40px rgba(0, 217, 255, 0.2);
}

.education-header {
  display: flex;
  align-items: start;
  gap: 1.5rem;
  margin-bottom: 1.5rem;
}

.education-icon {
  width: 60px;
  height: 60px;
  background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 2rem;
  flex-shrink: 0;
}

.education-info h3 {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
}

.education-school {
  color: var(--accent-primary);
  font-weight: 600;
  margin-bottom: 0.25rem;
}

.education-period {
  font-size: 0.9rem;
  color: var(--text-muted);
  font-family: 'JetBrains Mono', monospace;
}

.education-gpa {
  display: inline-block;
  padding: 0.5rem 1rem;
  background: rgba(16, 185, 129, 0.1);
  border: 1px solid rgba(16, 185, 129, 0.3);
  border-radius: 50px;
  color: var(--accent-tertiary);
  font-weight: 600;
  font-size: 0.9rem;
  margin-bottom: 1rem;
}

.education-courses {
  margin-top: 1rem;
}

.education-courses h4 {
  font-size: 0.95rem;
  color: var(--text-secondary);
  margin-bottom: 0.75rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.course-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.course-tag {
  padding: 0.4rem 0.8rem;
  background: rgba(0, 217, 255, 0.1);
  border: 1px solid rgba(0, 217, 255, 0.2);
  border-radius: 6px;
  font-size: 0.8rem;
  color: var(--text-secondary);
  font-weight: 500;
}

@media (max-width: 968px) {
  .education-grid {
    grid-template-columns: 1fr;
  }
}
EOF

echo "Education component created"

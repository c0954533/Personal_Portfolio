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

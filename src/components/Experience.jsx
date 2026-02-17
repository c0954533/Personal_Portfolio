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

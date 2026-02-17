import React from 'react'
import './Navbar.css'

const Navbar = ({ activeSection }) => {
  return (
    <nav>
      <div className="container">
        <div className="logo">SRB</div>
        <ul className="nav-links">
          <li>
            <a 
              href="#home" 
              className={activeSection === 'home' ? 'active' : ''}
            >
              Home
            </a>
          </li>
          <li>
            <a 
              href="#education"
              className={activeSection === 'education' ? 'active' : ''}
            >
              Education
            </a>
          </li>
          <li>
            <a 
              href="#skills"
              className={activeSection === 'skills' ? 'active' : ''}
            >
              Skills
            </a>
          </li>
          <li>
            <a 
              href="#projects"
              className={activeSection === 'projects' ? 'active' : ''}
            >
              Projects
            </a>
          </li>
          <li>
            <a 
              href="#experience"
              className={activeSection === 'experience' ? 'active' : ''}
            >
              Experience
            </a>
          </li>
          <li>
            <a 
              href="#contact"
              className={activeSection === 'contact' ? 'active' : ''}
            >
              Contact
            </a>
          </li>
        </ul>
      </div>
    </nav>
  )
}

export default Navbar

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

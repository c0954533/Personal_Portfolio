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

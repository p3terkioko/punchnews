# Punch News - Simple Online Newspaper Website

A beginner-friendly online newspaper website built with pure HTML, CSS, and JavaScript. This project demonstrates fundamental web development skills using only basic technologies.

## 🌟 Features

- **Responsive Design**: Mobile-first approach with clean, modern UI
- **Multiple Categories**: Breaking News, Business, Entertainment, Sports, Opinion
- **Search Functionality**: Search through articles by title, content, or author
- **Article Management**: JSON-based article storage and dynamic loading
- **Contact Form**: Functional contact form with validation
- **Clean Navigation**: Easy-to-use navigation with mobile menu
- **Professional Styling**: Beautiful design using specified color scheme

## 🎨 Design Specifications

### Color Scheme
- **Light Green**: #90EE90 (main theme color)
- **Black**: #000000 (text and headers)
- **Red**: #FF0000 (highlights and accents)
- **White**: #FFFFFF (background)
- **Gray**: #808080 (secondary text)

### Layout Features
- Sticky header with navigation
- Grid-based responsive layout
- Article cards with hover effects
- Sidebar with categories and additional content
- Footer with links and copyright

## 📁 Project Structure

```
punch-news/
├── index.html              # Homepage
├── about.html              # About us page
├── contact.html            # Contact page with form
├── breaking-news.html      # Breaking news category
├── business.html           # Business news category
├── entertainment.html      # Entertainment news category
├── sports.html             # Sports news category
├── opinion.html            # Opinion articles category
├── article.html            # Individual article view
├── css/
│   └── style.css          # Main stylesheet
├── js/
│   └── main.js            # Main JavaScript functionality
├── data/
│   └── articles.json      # Article data storage
├── images/                # Image assets (placeholder images)
└── README.md             # Project documentation
```

## 🚀 Getting Started

### Prerequisites
- A modern web browser (Chrome, Firefox, Safari, Edge)
- A local web server (optional but recommended)

### Installation

1. **Clone or download the project files**
   ```bash
   git clone [repository-url]
   cd punch-news
   ```

2. **Open with a local server** (recommended)
   - Using Python: `python -m http.server 8000`
   - Using Node.js: `npx http-server`
   - Using VS Code: Install "Live Server" extension

3. **Or open directly in browser**
   - Double-click `index.html` to open in your default browser
   - Note: Some features may not work without a local server due to CORS restrictions

### File Serving
Due to browser security restrictions, the JSON file loading requires a local server. If opening files directly:
- Articles may not load properly
- Use a local server for full functionality

## 💻 Technology Stack

- **HTML5**: Semantic markup and structure
- **CSS3**: Styling with Flexbox and Grid
- **JavaScript (ES6)**: Dynamic functionality and API calls
- **JSON**: Data storage for articles

## 📱 Features Overview

### Homepage (`index.html`)
- Featured article section
- Latest news from all categories
- Search functionality
- Category navigation
- Newsletter signup

### Category Pages
- **Breaking News**: Urgent news with live updates sidebar
- **Business**: Market data and business categories
- **Entertainment**: Box office data and trending content
- **Sports**: Live scores and game schedules
- **Opinion**: Featured columnists and editorial notes

### Article Page (`article.html`)
- Full article display
- Related articles
- Social sharing buttons
- Print functionality

### About Page (`about.html`)
- Company information and mission
- Team details and values
- Contact information
- Statistics and achievements

### Contact Page (`contact.html`)
- Contact form with validation
- Multiple contact methods
- Department-specific contacts
- Response time information

## 🛠️ JavaScript Functionality

### Core Features
- **Article Loading**: Fetch articles from JSON file
- **Category Filtering**: Filter articles by category
- **Search**: Search through article content
- **Form Validation**: Contact form validation
- **Mobile Menu**: Responsive navigation
- **Error Handling**: Graceful error handling for failed requests

### Key Functions
- `loadArticles()`: Load articles from JSON
- `displayArticles()`: Render articles to page
- `filterByCategory()`: Filter articles by category
- `searchArticles()`: Search functionality
- `handleContactForm()`: Form validation and submission

## 📊 Sample Data

The project includes 10 sample articles across different categories:
- 3 Breaking News articles
- 2 Business articles
- 2 Entertainment articles
- 2 Sports articles
- 1 Opinion piece

Articles include realistic content with:
- Engaging headlines
- Comprehensive content
- Author information
- Publication dates
- Category tags
- Placeholder images

## 🎯 Learning Objectives

This project teaches:
- **HTML**: Semantic markup, forms, navigation
- **CSS**: Responsive design, Flexbox, Grid, animations
- **JavaScript**: DOM manipulation, API calls, event handling
- **JSON**: Data structure and parsing
- **Web Design**: UI/UX principles, accessibility
- **Project Organization**: File structure, code organization

## 🔧 Customization

### Adding New Articles
1. Edit `data/articles.json`
2. Add new article object with required fields:
   ```json
   {
     "id": 11,
     "title": "Your Article Title",
     "content": "Full article content...",
     "category": "breaking-news",
     "author": "Author Name",
     "date": "2025-07-12",
     "image": "image-url",
     "excerpt": "Short summary..."
   }
   ```

### Styling Changes
- Edit `css/style.css`
- Modify CSS variables for easy color scheme changes:
  ```css
  :root {
    --primary-green: #90EE90;
    --primary-black: #000000;
    --accent-red: #FF0000;
    --white: #FFFFFF;
    --gray: #808080;
  }
  ```

### Adding New Categories
1. Create new HTML page (e.g., `technology.html`)
2. Add navigation link in all pages
3. Update JavaScript to handle new category
4. Add articles with the new category to JSON

## 📱 Browser Compatibility

- **Chrome**: Full support
- **Firefox**: Full support
- **Safari**: Full support
- **Edge**: Full support
- **Mobile browsers**: Responsive design works on all devices

## 🐛 Troubleshooting

### Articles Not Loading
- Ensure you're using a local server
- Check browser console for errors
- Verify `articles.json` is properly formatted

### Search Not Working
- Check JavaScript console for errors
- Ensure articles are loaded before searching

### Responsive Issues
- Test with browser developer tools
- Check CSS media queries
- Verify viewport meta tag is present

## 📈 Future Enhancements

Potential improvements for advanced students:
- Add comments system
- Implement user authentication
- Add article bookmarking
- Include social media integration
- Add newsletter functionality
- Implement article pagination
- Add dark mode toggle

## 🤝 Contributing

This is an educational project. Feel free to:
- Add new features
- Improve existing functionality
- Fix bugs
- Enhance the design
- Add more sample content

## 📄 License

This project is created for educational purposes. Feel free to use and modify as needed for learning.

## 👥 Credits

- Created as a learning project for web development fundamentals
- Uses placeholder images from placeholder.com
- Follows modern web development best practices
- Designed with accessibility and usability in mind

---

**Happy coding! 🚀**

For questions or support, please check the contact page or refer to the documentation within the code files.
#   p u n c h n e w s  
 
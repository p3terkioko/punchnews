// Simple JavaScript for Punch News - beginner level
var articles = [];

// Wait for page to load
window.onload = function() {
    setupSearch();
    setupMobileMenu();
    
    // Check if we're on article page and load articles first
    var urlParams = new URLSearchParams(window.location.search);
    var articleId = urlParams.get('id');
    if (articleId) {
        loadArticlesAndShowSingle(articleId);
    } else {
        loadArticles();
    }
};

// Load articles from JSON
function loadArticles() {
    var loading = document.getElementById('loading');
    if (loading) {
        loading.style.display = 'block';
    }
    
    // Use XMLHttpRequest like beginners would
    var xhr = new XMLHttpRequest();
    xhr.open('GET', 'data/articles.json', true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                var data = JSON.parse(xhr.responseText);
                articles = data.articles;
                
                if (loading) {
                    loading.style.display = 'none';
                }
                
                showArticles(articles);
                showFeaturedArticle();
            } else {
                if (loading) {
                    loading.style.display = 'none';
                }
                showError('Error loading articles!');
            }
        }
    };
    xhr.send();
}

// Load articles and then show single article
function loadArticlesAndShowSingle(articleId) {
    var loading = document.getElementById('loading');
    if (loading) {
        loading.style.display = 'block';
    }
    
    // Use XMLHttpRequest like beginners would
    var xhr = new XMLHttpRequest();
    xhr.open('GET', 'data/articles.json', true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                var data = JSON.parse(xhr.responseText);
                articles = data.articles;
                
                if (loading) {
                    loading.style.display = 'none';
                }
                
                // Now show the single article
                showSingleArticle(articleId);
            } else {
                if (loading) {
                    loading.style.display = 'none';
                }
                showError('Error loading articles!');
            }
        }
    };
    xhr.send();
}

// Display articles in the container
function displayArticles(articlesToShow, container = 'articlesContainer') {
    const articlesContainer = document.getElementById(container);
    if (!articlesContainer) return;
    
    if (articlesToShow.length === 0) {
        articlesContainer.innerHTML = '<p class="no-results">No articles found.</p>';
        return;
    }
    
    articlesContainer.innerHTML = articlesToShow.map(article => `
        <article class="article-card">
            <img src="${article.image}" alt="${article.title}" class="article-image" loading="lazy">
            <div class="article-category">${formatCategory(article.category)}</div>
            <h2><a href="article.html?id=${article.id}" class="article-title">${article.title}</a></h2>
            <div class="article-meta">
                By ${article.author} | ${formatDate(article.date)}
            </div>
            <p class="article-excerpt">${article.excerpt}</p>
            <a href="article.html?id=${article.id}" class="read-more">Read More →</a>
        </article>
    `).join('');
}

// Show articles on page
function showArticles(articlesToShow) {
    var container = document.getElementById('articlesContainer');
    if (!container) return;
    
    var html = '';
    
    for (var i = 0; i < articlesToShow.length; i++) {
        var article = articlesToShow[i];
        html += '<div class="article-card">';
        html += '<img src="' + article.image + '" alt="' + article.title + '" class="article-image">';
        html += '<div class="article-category">' + formatCategory(article.category) + '</div>';
        html += '<h2><a href="article.html?id=' + article.id + '" class="article-title">' + article.title + '</a></h2>';
        html += '<div class="article-meta">By ' + article.author + ' | ' + formatDate(article.date) + '</div>';
        html += '<p class="article-excerpt">' + article.excerpt + '</p>';
        html += '<a href="article.html?id=' + article.id + '" class="read-more">Read More</a>';
        html += '</div>';
    }
    
    container.innerHTML = html;
}

// Display featured article on homepage
function displayFeaturedArticle() {
    const featuredContainer = document.getElementById('featuredArticle');
    if (!featuredContainer || articles.length === 0) return;
    
    // Get the most recent article as featured
    const featuredArticle = articles[0];
    
    featuredContainer.innerHTML = `
        <img src="${featuredArticle.image}" alt="${featuredArticle.title}" class="article-image" loading="lazy">
        <div class="article-category">${formatCategory(featuredArticle.category)}</div>
        <h2><a href="article.html?id=${featuredArticle.id}" class="article-title">${featuredArticle.title}</a></h2>
        <div class="article-meta">
            By ${featuredArticle.author} | ${formatDate(featuredArticle.date)}
        </div>
        <p class="article-excerpt">${featuredArticle.excerpt}</p>
        <a href="article.html?id=${featuredArticle.id}" class="btn btn-red">Read Full Story</a>
    `;
}

// Show single article
function showSingleArticle(articleId) {
    var container = document.getElementById('singleArticle');
    if (!container) return;
    
    // Convert articleId to number for comparison
    articleId = parseInt(articleId);
    
    // Find the article
    var article = null;
    for (var i = 0; i < articles.length; i++) {
        if (articles[i].id == articleId) {
            article = articles[i];
            break;
        }
    }
    // If not found, just show the first article
    if (!article && articles.length > 0) {
        article = articles[0];
    }
    if (!article) {
        container.innerHTML = '<div class="error">No articles available!</div>';
        return;
    }
    // Change page title
    document.title = article.title + ' - Punch News';
    var html = '';
    html += '<div class="article-full">';
    html += '<a href="' + getCategoryPage(article.category) + '" class="back-link">← Back to ' + formatCategory(article.category) + '</a>';
    html += '<img src="' + article.image + '" alt="' + article.title + '" class="article-image">';
    html += '<div class="article-category">' + formatCategory(article.category) + '</div>';
    html += '<h1 class="article-title">' + article.title + '</h1>';
    html += '<div class="article-meta">By ' + article.author + ' | ' + formatDate(article.date) + '</div>';
    html += '<div class="article-content">' + formatContent(article.content) + '</div>';
    html += '</div>';
    container.innerHTML = html;
}

// Search function
function setupSearch() {
    var searchBox = document.getElementById('searchBar');
    if (!searchBox) return;
    
    searchBox.onkeyup = function() {
        var query = searchBox.value.toLowerCase();
        
        if (query == '') {
            showArticles(articles);
            return;
        }
        
        var filtered = [];
        for (var i = 0; i < articles.length; i++) {
            var article = articles[i];
            if (article.title.toLowerCase().indexOf(query) >= 0 || 
                article.content.toLowerCase().indexOf(query) >= 0 ||
                article.author.toLowerCase().indexOf(query) >= 0) {
                filtered.push(article);
            }
        }
        
        showArticles(filtered);
    };
}

// Mobile menu
function setupMobileMenu() {
    var menuButton = document.querySelector('.menu-toggle');
    var menu = document.querySelector('nav ul');
    
    if (menuButton && menu) {
        menuButton.onclick = function() {
            if (menu.style.display == 'block') {
                menu.style.display = 'none';
            } else {
                menu.style.display = 'block';
            }
        };
    }
}

// Load articles for category pages
function loadCategoryArticles(category) {
    if (articles.length == 0) {
        setTimeout(function() {
            loadCategoryArticles(category);
        }, 100);
        return;
    }
    
    var filtered = [];
    for (var i = 0; i < articles.length; i++) {
        if (articles[i].category == category) {
            filtered.push(articles[i]);
        }
    }
    
    showArticles(filtered);
}

// Contact form
function validateContactForm() {
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var message = document.getElementById('message').value;
    
    var errors = [];
    
    if (name.length < 2) {
        errors.push('Name must be at least 2 characters');
    }
    
    if (email.indexOf('@') == -1 || email.indexOf('.') == -1) {
        errors.push('Please enter a valid email');
    }
    
    if (message.length < 10) {
        errors.push('Message must be at least 10 characters');
    }
    
    if (errors.length > 0) {
        alert('Errors:\n' + errors.join('\n'));
        return false;
    }
    
    alert('Thank you for your message! We will get back to you soon.');
    return false; // Don't actually submit
}

// Helper functions
function formatCategory(category) {
    return category.replace('-', ' ').replace(/\b\w/g, function(l) { 
        return l.toUpperCase(); 
    });
}

function formatDate(dateStr) {
    var date = new Date(dateStr);
    var months = ['January', 'February', 'March', 'April', 'May', 'June',
                  'July', 'August', 'September', 'October', 'November', 'December'];
    return months[date.getMonth()] + ' ' + date.getDate() + ', ' + date.getFullYear();
}

function formatContent(content) {
    var paragraphs = content.split('\n\n');
    var html = '';
    for (var i = 0; i < paragraphs.length; i++) {
        html += '<p>' + paragraphs[i] + '</p>';
    }
    return html;
}

function getCategoryPage(category) {
    if (category == 'breaking-news') return 'breaking-news.html';
    return category + '.html';
}

function showError(message) {
    var errorDiv = document.getElementById('errorContainer');
    if (!errorDiv) {
        errorDiv = document.createElement('div');
        errorDiv.id = 'errorContainer';
        var main = document.querySelector('main');
        if (main) {
            main.insertBefore(errorDiv, main.firstChild);
        }
    }
    errorDiv.innerHTML = '<div class="error">' + message + '</div>';
    errorDiv.style.display = 'block';
}

// Make functions available globally for inline onclick handlers
window.loadCategoryArticles = loadCategoryArticles;
window.validateContactForm = validateContactForm;

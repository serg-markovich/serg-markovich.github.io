# Personal Website

Professional website of Sergey Markovich - DevOps Engineer

## 🌐 Live Sites

- **Production**: [serg-markovich.de](https://serg-markovich.de)
- **Demo/Staging**: [serg-markovich.github.io](https://serg-markovich.github.io)

## 🛠 Tech Stack

- HTML5, CSS3
- Hosted on: Contabo VPS (Hestia CP)
- Version Control: Git/GitHub
- Deployment: Manual (will automate with GitHub Actions)

## 📁 Structure

```
.
├── index.html       # Main page
├── contacts.html    # Contact information
├── 404.html         # Error page
├── css/
│   └── style.css    # Styles
├── .htaccess        # Apache config
└── README.md        # This file
```

## 🚀 Local Development

```bash
# Clone repository
git clone https://github.com/serg-markovich/serg-markovich.github.io.git
cd serg-markovich.github.io

# Open in browser (simple HTTP server)
python3 -m http.server 8000
# Visit: http://localhost:8000
```

## 📦 Deployment

### To GitHub Pages (automatic)
```bash
git push origin main
# Automatically deploys to serg-markovich.github.io
```

### To Production VPS (manual)
```bash
rsync -avz --progress --delete ./ root@158.220.127.16:/home/sergmrx/web/serg-markovich.de/public_html/ --exclude='.git' --exclude='README.md'
```

## 📝 TODO

- [ ] Set up GitHub Actions for automated deployment
- [ ] Add CI/CD pipeline
- [ ] Implement automated testing
- [ ] Add monitoring/logging

---

Made with ❤️ in Stuttgart, Germany

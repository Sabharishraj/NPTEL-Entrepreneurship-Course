# NPTEL Entrepreneurship Course — Interactive MCQ Quizzy 🚀

An interactive, responsive practice platform built for the **NPTEL Entrepreneurship** course. Master all **12 weeks** and **120 exam-accurate multiple-choice questions** with instant grading, randomized option shuffling, detailed pedagogical explanations, and automated attempt history tracking.

🔗 **Live Website**: [https://sabharishraj.github.io/NPTEL-Entrepreneurship-Course/](https://sabharishraj.github.io/NPTEL-Entrepreneurship-Course/)

---

## 🌟 Key Features

- **Full 12-Week Coverage**: 120 curated multiple-choice questions matching real NPTEL assignments.
  - *Weeks 1–11*: Core entrepreneurship foundations, business models, corporate governance, startup frameworks, and market entry.
  - *Week 12*: Need-marketing matrix (Non-linear Unknowns), Maslow's hierarchy, Kuratko models, NatSol Stevia case, and marketing 4-Ps.
- **Dynamic Quiz Engine**:
  - Randomized question and option shuffling to test genuine conceptual understanding.
  - Immediate visual feedback on selection with detailed answer explanations.
  - Comprehensive post-quiz review displaying chosen vs. correct answers with solution hints.
- **Persistent Progress Dashboard**:
  - Automatically captures quiz scores, percentages, and timestamps.
  - Calculates aggregate stats (quizzes taken, average accuracy, personal best).
  - Works 100% client-side via namespaced `localStorage` on GitHub Pages, with optional backend sync.
- **Dual-Mode Architecture**:
  - **Static Mode (GitHub Pages)**: Runs anywhere with zero backend or server setup needed.
  - **Full-Stack Mode (PHP + MySQL)**: Compatible with standard LAMP/Docker environments for centralized SQL persistence.

---

## 📂 Repository Structure

```
.
├── index.html              # Homepage with 12 week selector & quick stats
├── practice.html           # Interactive quiz taking interface & question review
├── progress.html           # Progress dashboard & attempt history log
├── questions-data.js       # Pre-packaged static questions bank for instant load
├── questions.json          # Machine-readable JSON questions database (Weeks 1–12)
├── api.php                 # REST API endpoints for questions and attempts
├── db.php                  # PDO database configuration for local MySQL
├── kimi.sql                # Complete MySQL schema & seed data (120 questions)
├── attempts.sql            # Schema for quiz attempt history logging
└── .github/workflows/
    └── deploy.yml          # Automated GitHub Pages CI/CD pipeline
```

---

## 🚀 Running Locally

### Option 1: Static / Browser (No Setup Required)

Simply clone the repository and open `index.html` in any modern web browser or serve via any static server:

```bash
git clone https://github.com/Sabharishraj/NPTEL-Entrepreneurship-Course.git
cd NPTEL-Entrepreneurship-Course
python3 -m http.server 8000
```
Then visit `http://localhost:8000`.

---

### Option 2: Full-Stack Mode with PHP & Docker MySQL

1. **Start the MySQL container**:
   ```bash
   docker run --name nptel-mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=nptel_mcq -p 3306:3306 -d mysql:8.4
   ```

2. **Import the SQL databases**:
   ```bash
   docker exec -i nptel-mysql mysql -uroot -proot nptel_mcq < kimi.sql
   docker exec -i nptel-mysql mysql -uroot -proot nptel_mcq < attempts.sql
   ```

3. **Start the PHP development server**:
   ```bash
   php -S localhost:8000
   ```

4. Navigate to `http://localhost:8000`.

---

## 📊 Course Syllabus & Weeks

| Week | Focus / Highlights | Questions |
|:---:|:---|:---:|
| **Week 1** | Startup Definitions, Incubation & Ecosystems | 10 |
| **Week 2** | Ideation, Prototyping & Personality Typology | 10 |
| **Week 3** | Market Validation, Customer Discovery & Lean Loops | 10 |
| **Week 4** | Business Model Canvas & Value Propositions | 10 |
| **Week 5** | Product-Market Fit & Competitive Strategy | 10 |
| **Week 6** | Operational Competencies & Technology Architecture | 10 |
| **Week 7** | Financial Planning, Cost Structures & Unit Economics | 10 |
| **Week 8** | Seed Funding, Angel Investment & Venture Capital | 10 |
| **Week 9** | Scaling, Team Building & Human Capital | 10 |
| **Week 10** | IP Strategy, Patents & Legal Compliance | 10 |
| **Week 11** | Corporate Governance & Creative Destruction | 10 |
| **Week 12** | Advanced Strategy, Need-Marketing Pivot & Case Studies | 10 |

---

## 📜 License

Created for educational and self-study purposes for students taking the NPTEL Entrepreneurship course.

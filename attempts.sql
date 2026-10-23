-- ============================================================
-- attempts.sql — results history table for the NPTEL MCQ site
-- Run this AFTER kimi.sql (it uses the nptel_mcq database)
-- ============================================================
USE nptel_mcq;

CREATE TABLE IF NOT EXISTS attempts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    week_number INT NOT NULL,
    score INT NOT NULL,
    total INT NOT NULL,
    taken_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

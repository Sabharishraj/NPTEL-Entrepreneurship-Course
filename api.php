<?php
// ============================================================
// api.php — JSON API for the NPTEL MCQ practice site
//
// Endpoints:
//   GET api.php?week=N             -> questions for week N as JSON
//   POST api.php?action=save       -> save an attempt (fields: week, score, total)
//   GET  api.php?action=attempts   -> all past attempts as JSON
// ============================================================

require 'db.php';
header('Content-Type: application/json');

$action = $_GET['action'] ?? 'questions';

// ---------------- GET questions for a week ----------------
if ($action === 'questions') {
    $week = isset($_GET['week']) ? (int) $_GET['week'] : 0;
    if ($week < 1 || $week > 12) {
        http_response_code(400);
        echo json_encode(['error' => 'Invalid week number']);
        exit;
    }

    $stmt = $pdo->prepare(
        'SELECT week_number, question_number, question,
                option_a, option_b, option_c, option_d,
                correct_option, explanation
         FROM questions
         WHERE week_number = ?
         ORDER BY question_number'
    );
    $stmt->execute([$week]);
    $questions = $stmt->fetchAll();

    echo json_encode(['week' => $week, 'count' => count($questions), 'questions' => $questions]);
    exit;
}

// ---------------- POST save an attempt ----------------
if ($action === 'save') {
    $week  = (int) ($_POST['week']  ?? 0);
    $score = (int) ($_POST['score'] ?? -1);
    $total = (int) ($_POST['total'] ?? 0);

    if ($week < 1 || $score < 0 || $total < 1) {
        http_response_code(400);
        echo json_encode(['error' => 'Missing or invalid fields (week, score, total)']);
        exit;
    }

    $stmt = $pdo->prepare(
        'INSERT INTO attempts (week_number, score, total) VALUES (?, ?, ?)'
    );
    $stmt->execute([$week, $score, $total]);

    echo json_encode(['ok' => true, 'id' => $pdo->lastInsertId()]);
    exit;
}

// ---------------- GET past attempts ----------------
if ($action === 'attempts') {
    $rows = $pdo->query(
        'SELECT id, week_number, score, total, taken_at
         FROM attempts
         ORDER BY taken_at DESC, id DESC'
    )->fetchAll();

    echo json_encode(['attempts' => $rows]);
    exit;
}

http_response_code(404);
echo json_encode(['error' => 'Unknown action']);

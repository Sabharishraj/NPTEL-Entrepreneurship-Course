<?php
// ============================================================
// DATABASE CONFIGURATION — EDIT THESE VALUES IF NEEDED
// ============================================================
$DB_HOST = '127.0.0.1';   // MySQL server address
$DB_NAME = 'nptel_mcq';   // Database name (from kimi.sql)
$DB_USER = 'root';        // MySQL username
$DB_PASS = 'root';        // MySQL password
// ============================================================

try {
    $pdo = new PDO(
        "mysql:host=$DB_HOST;dbname=$DB_NAME;charset=utf8mb4",
        $DB_USER,
        $DB_PASS,
        [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]
    );
} catch (PDOException $e) {
    http_response_code(500);
    header('Content-Type: application/json');
    echo json_encode(['error' => 'Database connection failed: ' . $e->getMessage()]);
    exit;
}

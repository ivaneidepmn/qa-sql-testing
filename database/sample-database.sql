DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    status TEXT NOT NULL,
    created_at TEXT NOT NULL
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    product_name TEXT NOT NULL,
    total_value REAL NOT NULL,
    status TEXT NOT NULL,
    created_at TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users (name, email, status, created_at) VALUES
('Ana Souza', 'ana@email.com', 'active', '2026-03-01'),
('Carlos Lima', 'carlos@email.com', 'active', '2026-03-02'),
('Mariana Costa', 'mariana@email.com', 'inactive', '2026-03-03'),
('Joao Silva', 'joao@email.com', 'active', '2026-03-04'),
('Ana Souza Duplicate', 'ana@email.com', 'active', '2026-03-05');

INSERT INTO orders (user_id, product_name, total_value, status, created_at) VALUES
(1, 'Notebook', 3500.00, 'paid', '2026-03-05'),
(2, 'Mouse Gamer', 150.00, 'pending', '2026-03-05'),
(3, 'Keyboard', -50.00, 'paid', '2026-03-06'),
(1, 'Monitor', 1200.00, 'paid', '2026-03-06'),
(4, 'Headset', 300.00, 'cancelled', '2026-03-06');
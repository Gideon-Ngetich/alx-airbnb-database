-- Sample Users
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
  ('a1b2c3d4-e5f6-7890-1234-56789abcdef0', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', '0712345678', 'guest', CURRENT_TIMESTAMP),
  ('b2c3d4e5-f6a1-8901-2345-67890abcdef1', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '0723456789', 'host', CURRENT_TIMESTAMP),
  ('c3d4e5f6-a1b2-9012-3456-78901abcdef2', 'Charlie', 'Lee', 'charlie@example.com', 'hashed_pw_3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Sample Properties
INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
  ('d4e5f6a1-b2c3-0123-4567-89012abcdef3', 'b2c3d4e5-f6a1-8901-2345-67890abcdef1', 'Cozy Cabin', 'A small cabin in the woods', 'Nakuru', 3500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('e5f6a1b2-c3d4-1234-5678-90123abcdef4', 'b2c3d4e5-f6a1-8901-2345-67890abcdef1', 'Urban Apartment', 'Modern apartment in Nairobi CBD', 'Nairobi', 5000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Sample Bookings
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
  ('f6a1b2c3-d4e5-2345-6789-01234abcdef5', 'd4e5f6a1-b2c3-0123-4567-89012abcdef3', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', '2025-08-01', '2025-08-03', 7000.00, 'confirmed', CURRENT_TIMESTAMP),
  ('a1b2c3d4-e5f6-3456-7890-12345abcdef6', 'e5f6a1b2-c3d4-1234-5678-90123abcdef4', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', '2025-08-10', '2025-08-12', 10000.00, 'pending', CURRENT_TIMESTAMP);

-- Sample Payments
INSERT INTO Payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
  ('b2c3d4e5-f6a1-4567-8901-23456abcdef7', 'f6a1b2c3-d4e5-2345-6789-01234abcdef5', 7000.00, CURRENT_TIMESTAMP, 'paypal');

-- Sample Reviews
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
  ('c3d4e5f6-a1b2-5678-9012-34567abcdef8', 'd4e5f6a1-b2c3-0123-4567-89012abcdef3', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', 5, 'Amazing experience! Peaceful and clean.', CURRENT_TIMESTAMP);

-- Sample Messages
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
  ('d4e5f6a1-b2c3-6789-0123-45678abcdef9', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', 'b2c3d4e5-f6a1-8901-2345-67890abcdef1', 'Hi Bob, is the cabin available on August 1st?', CURRENT_TIMESTAMP),
  ('e5f6a1b2-c3d4-7890-1234-56789abcde10', 'b2c3d4e5-f6a1-8901-2345-67890abcdef1', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', 'Yes, it is. You can go ahead and book it.', CURRENT_TIMESTAMP);

-- DML File for Health and Fitness Club Management System Sample Data

-- Sample data for Members table
INSERT INTO Members1 (username, password, email, full_name, date_of_birth, gender, address, phone_number, fitness_goal_weight, fitness_goal_time_interval)
VALUES
    ('member1', 'password1', 'member1@example.com', 'John Doe', '1990-05-15', 'Male', '123 Main St, Cityville', '123-456-7890', 180, '6 months'),
    ('member2', 'password2', 'member2@example.com', 'Jane Smith', '1985-09-20', 'Female', '456 Elm St, Townsville', '987-654-3210', 150, '1 year'),
    ('member3', 'password3', 'member3@example.com', 'Mike Johnson', '1995-03-10', 'Male', '789 Oak St, Villageton', '555-555-5555', 200, '3 months');

-- Sample data for HealthMetrics table
INSERT INTO HealthMetrics (member_id, metric_date, weight, height, body_fat_percentage)
VALUES
    (1, '2023-10-01', 200, 72, 18),
    (1, '2023-11-01', 195, 72, 16),
    (2, '2023-10-01', 160, 65, 22),
    (2, '2023-11-01', 155, 65, 20),
    (3, '2023-10-01', 210, 75, 25),
    (3, '2023-11-01', 205, 75, 23);

-- Sample data for Trainers table
INSERT INTO Trainers (username, password, email, full_name, date_of_birth, gender, address, phone_number)
VALUES
    ('trainer1', 'password1', 'trainer1@example.com', 'Alex Trainer', '1980-08-10', 'Male', '789 Maple St, Trainercity', '111-222-3333'),
    ('trainer2', 'password2', 'trainer2@example.com', 'Samantha Coach', '1982-07-20', 'Female', '456 Pine St, Coachtown', '444-555-6666');

-- Sample data for Sessions table
INSERT INTO Sessions (trainer_id, member_id, session_date, start_time, end_time, session_type)
VALUES
    (1, 1, '2023-11-15', '10:00:00', '11:00:00', 'Personal Training'),
    (1, 2, '2023-11-16', '09:00:00', '10:00:00', 'Personal Training'),
    (2, 3, '2023-11-17', '11:00:00', '12:00:00', 'Group Fitness Class');

-- Sample data for Classes table
INSERT INTO Classes (class_name, class_description, class_date, start_time, end_time)
VALUES
    ('Yoga', 'Beginner yoga class', '2023-11-18', '09:00:00', '10:00:00'),
    ('Zumba', 'High-energy dance fitness class', '2023-11-19', '10:00:00', '11:00:00');

-- Sample data for RoomBookings table
INSERT INTO RoomBookings (room_number, booking_date, start_time, end_time)
VALUES
    (101, '2023-11-18', '08:00:00', '09:00:00'),
    (102, '2023-11-19', '09:00:00', '10:00:00');

-- Sample data for EquipmentMaintenance table
INSERT INTO EquipmentMaintenance (equipment_name, last_maintenance_date)
VALUES
    ('Treadmill', '2023-10-01'),
    ('Elliptical', '2023-10-15');

-- Sample data for Billing table
INSERT INTO Billing (member_id, billing_date, amount, payment_status)
VALUES
    (1, '2023-11-01', 100, TRUE),
    (2, '2023-11-01', 80, TRUE),
    (3, '2023-11-01', 120, FALSE);
-- DDL File for Health and Fitness Club Management System Database

-- Table: Members
CREATE TABLE Members2 (
    member_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address TEXT,
    phone_number VARCHAR(15),
    fitness_goal_weight DECIMAL,
    fitness_goal_time_interval INTERVAL,
    -- Additional Constraints
    CHECK (gender IN ('Male', 'Female', 'Other')),
    CHECK (fitness_goal_weight > 0),
    CHECK (fitness_goal_time_interval > interval '0' hour)
);

-- Table: HealthMetrics
CREATE TABLE HealthMetrics1 (
    metric_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    metric_date DATE NOT NULL,
    weight DECIMAL,
    height DECIMAL,
    body_fat_percentage DECIMAL,
    -- Additional Constraints
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    CHECK (weight > 0),
    CHECK (height > 0),
    CHECK (body_fat_percentage >= 0)
);

-- Table: Trainers
CREATE TABLE Trainers1 (
    trainer_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address TEXT,
    phone_number VARCHAR(15)
    -- Additional Constraints
    CHECK (gender IN ('Male', 'Female', 'Other'))
);

-- Table: Sessions
CREATE TABLE Sessions1 (
    session_id SERIAL PRIMARY KEY,
    trainer_id INT NOT NULL,
    member_id INT NOT NULL,
    session_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    session_type VARCHAR(20) NOT NULL,
    -- Additional Constraints
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    CHECK (start_time < end_time)
);

-- Table: Classes
CREATE TABLE Classes1 (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    class_description TEXT,
    class_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    -- Additional Constraints
    CHECK (start_time < end_time)
);

-- Table: RoomBookings
CREATE TABLE RoomBookings1 (
    booking_id SERIAL PRIMARY KEY,
    room_number INT NOT NULL,
    booking_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    -- Additional Constraints
    CHECK (start_time < end_time)
);

-- Table: EquipmentMaintenance
CREATE TABLE EquipmentMaintenance1 (
    maintenance_id SERIAL PRIMARY KEY,
    equipment_name VARCHAR(100) NOT NULL,
    last_maintenance_date DATE,
    -- Additional Constraints
    CHECK (last_maintenance_date IS NULL OR last_maintenance_date <= CURRENT_DATE)
);

-- Table: Billing
CREATE TABLE Billing1 (
    bill_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    billing_date DATE NOT NULL,
    amount DECIMAL NOT NULL,
    payment_status BOOLEAN NOT NULL DEFAULT FALSE,
    -- Additional Constraints
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    CHECK (amount > 0)
);
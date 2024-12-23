# Athlete Workout and Progress Tracker

## Project Overview

The Athlete Workout and Progress Tracker is a full-stack web application designed to help athletes and coaches track workouts, progress, and nutrition. The app features a Ruby on Rails backend API and a React.js frontend, running in Docker containers. Athletes can log workouts, track calorie intake, and monitor progress. Coaches can manage their teams and provide personalized workout plans.

## Table of Contents

- Tech Stack
- Features
- [Setup Instructions
- How to Use
  - Athletes
  - Coaches
- Future Enhancements

---

## Tech Stack

- **Backend**: Ruby on Rails (API mode), PostgreSQL
- **Frontend**: React.js, Chart.js (for data visualization)
- **Database**: PostgreSQL
- **Containerization**: Docker (for managing frontend and backend services)

---

## Features

### Phase 1: Athlete Side MVP

#### Dashboard
- Displays workout logs, calorie intake, and progress summaries.
- Visualizes weekly progress using Chart.js.

#### Workout Logging
- Log exercises (type, sets, reps, weights).
- Perform CRUD operations on workout entries.

#### Calorie Tracking
- Input daily meals and calorie counts.

#### Progress Tracking
- Display personal records (e.g., max lifts, run times) in tabular and graphical formats.

#### Frontend Development
- React.js implementation connected to the Rails backend API.

### Phase 2: Advanced Athlete Features

#### Team Rankings
- Leaderboard based on metrics like consistency and progress.
- Elasticsearch for fast querying and sorting.

#### Analytics Dashboard
- Advanced visualizations (trends, heatmaps).
- Filters for time ranges and metrics.

#### Notification System
- Email/SMS notifications for achievements, streaks, or missed workouts.

#### Profile and Settings
- Update personal information and fitness goals.
- Enable dark mode and other personalization options.

### Phase 3: Coach Features

#### Team Management
- View and edit team members’ data.
- Bulk upload/download data (CSV or Excel).

#### Performance Reports
- Generate detailed reports for individuals or teams.

#### Workout Plans
- Assign custom workout plans to athletes.
- Track adherence to workout plans.

#### Messaging System
- Direct communication between coaches and athletes.

---

## Setup Instructions

Follow these steps to set up the application in a Docker environment:

### Step 1: Set Up the Project Directory
Create a new folder and navigate to it:
```bash
mkdir Athlete
cd Athlete
```

### Step 2: Create the Rails Backend
Generate a new Rails app with PostgreSQL as the database:
```bash
rails new back_end_app --api --database=postgresql
```

### Step 3: Add the Rails Dockerfile
Navigate to the back_end_app directory and create a Dockerfile.

### Step 4: Create the React Frontend
Navigate to the Athlete directory and create a new React app:
```bash
npx create-react-app front_end_app
```

### Step 5: Add the React Dockerfile
Navigate to the front_end_app directory and create a Dockerfile.

### Step 6: Create the docker-compose.yml
At the root of your Athlete folder, create a docker-compose.yml file.

### Step 7: Build and Run the Application
Run the following commands from the root of your project:
```bash
docker-compose build
docker-compose up
```

## How to Use

### Athletes
1. Log in to the application.
2. Navigate to the dashboard to view progress summaries and logs.
3. Add new workouts or meals to track calorie intake.
4. View progress charts and personal records.

### Coaches
1. Log in with coach credentials.
2. Manage team data and assign workout plans.
3. Monitor team rankings and individual progress.
4. Communicate with athletes via the messaging system.

---

## Future Enhancements

### Athlete Features
- Enhanced analytics with predictive metrics.
- Integration with fitness tracking devices.

### Coach Features
- AI-powered recommendations for workout plans.
- Video-based exercise tutorials and guidance.

### General Improvements
- Mobile-friendly design.
- Multi-language support.

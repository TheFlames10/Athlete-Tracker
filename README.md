Docker App - Athlete Workout and Progress Tracker
Project Overview
This project is a full-stack web application to track athletes' workouts, progress, and nutrition. It consists of a Ruby on Rails backend API and a React.js frontend, running in Docker containers. The application will allow athletes to log workouts, track calories, and see their progress. Coaches will have additional features to manage their teams and provide personalized workout plans.

Tech Stack
Backend: Ruby on Rails (API mode), PostgreSQL
Frontend: React.js, Chart.js (data visualization)
Database: PostgreSQL
Docker: For containerization of both frontend and backend services

Features and Phases
Phase 1: Athlete Side MVP
Dashboard
Create a dashboard displaying:
Workout logs
Calorie intake
Progress summaries
Use Chart.js to visualize weekly progress.
Workout Logging
Allow athletes to log their exercises (type, sets, reps, weights).
Implement CRUD operations for workout entries.
Calorie Tracking
Build a form for athletes to input daily meals and calorie counts.
Progress Tracking
Display personal records (e.g., max lifts, run times) in both tabular and graphical format.
Frontend Development
Build the features above in React.js and connect them to the Rails backend API.

Phase 2: Advanced Athlete Features
Team Rankings
Create a leaderboard based on predefined metrics such as consistency and progress.
Use Elasticsearch for fast querying and sorting.
Analytics Dashboard
Add advanced visualizations like trends and heatmaps.
Implement filters for time ranges and different metrics.
Notification System
Notify athletes about achievements, streaks, or missed workouts via email or SMS.
Profile and Settings
Allow athletes to update personal information and fitness goals.
Add dark mode and other personalization options.

Phase 3: Coach Features
Team Management
Allow coaches to view and edit team members’ data.
Implement bulk upload/download of data (CSV or Excel).
Performance Reports
Generate detailed reports for individual athletes or entire teams.
Workout Plans
Allow coaches to assign custom workout plans to athletes.
Track adherence to workout plans.
Messaging System
Add a direct messaging feature between coaches and athletes.

Setup Instructions
Follow the steps below to get the application running in a Docker environment.
Step 1: Set Up the Project Directory
Create a new folder and navigate to it:
mkdir Athlete
cd Athlete

Step 2: Create the Rails Backend
Generate a new Rails app with PostgreSQL as the database:
rails new back_end_app --api --database=postgresql

Step 3: Add the Rails Dockerfile
Navigate to the back_end_app directory and create a Dockerfile
Step 4: Create the React Frontend
Navigate to Athlete and create a new React app:
npx create-react-app front_end_app

Step 5: Add the React Dockerfile
Navigate to the front_end_app directory and create a Dockerfile
Step 6: Create the docker-compose.yml
At the root of your Athlete folder, create a docker-compose.yml file
In this setup, the Rails server runs on port 3002, and the React server runs on port 3000. The React frontend communicates with the backend via localhost:3002.
Step 7: Build and Run the Application
To build and start the application, run the following commands from the root of your project:
docker-compose build
docker-compose up



Folder Structure
Here’s a look at how your project directory will be structured:

Athlete/
├── back_end_app/              # Rails API backend
│   ├── app/
│   ├── config/
│   ├── Dockerfile
│   ├── Gemfile
│   ├── Gemfile.lock
│   └── ...
├── front_end_app/             # React.js frontend
│   ├── public/
│   ├── src/
│   ├── Dockerfile
│   ├── package.json
│   └── ...
├── docker-compose.yml         # Docker Compose file to manage services
├── README.md                  # This file
└── tmp/
    └── db/                    # PostgreSQL data storage




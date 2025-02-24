# README

# Rails API Project - Deployment Instructions

## 1. How to Run the Application

### If running locally:
1. Install Ruby (3.4.2) and Bundler
2. Install PostgreSQL
3. Clone the repository and navigate to the project folder
4. Run: 
bundle install 
rails db:create db:migrate 
rails server
5. Open `http://localhost:3000` in your browser

### If running on Heroku:
1. Deploy the project using:
git push heroku main 
heroku run rails db:migrate 
heroku restart

2. Open the provided Heroku URL

## 2. Heroku Deployment Details
- The application is currently deployed at:
`https://your-heroku-app.herokuapp.com`
- This application uses PostgreSQL for the database.

## 3. Special Notes
- Ensure `DATABASE_URL` is set in the production environment.
- If encountering issues, run:
heroku logs --tail
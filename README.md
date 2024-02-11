# WeatherApp
Overview
This Flutter application provides real-time weather information based on the user's current location. It utilizes the GetX library for state management, Dio for API calls, and adheres to clean code and architectural principles.

Features
User Interface:

Simple and intuitive design with two screens: home screen for current weather and details screen for more information.
Displays temperature, weather condition, humidity, and wind speed with corresponding images for each forecast condition.
Responsive UI for different screen sizes.
Data Source:

Utilizes the OpenWeatherMap API for fetching weather data.
GetX Implementation:

State management using GetX.
Reactive state updates for real-time weather information.
Navigation between home and details screens implemented using GetX.
Dio Integration:

Dio library for making network requests to fetch weather data from the API.
Graceful handling of API responses and errors.
Clean Code:

Meaningful variable and function names.
Proper error handling and logging.
Architecture:

Follows the MVC (Model-View-Controller) architecture pattern.
Codebase organized into layers: model, view, controller, services.
Ensures separation of concerns and modularity.

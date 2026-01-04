# HurryFoods

A Flutter application for users to purchase discounted surplus food from local stores, reducing food waste.

## About The Project

HurryFoods is a mobile application designed to connect users with local stores and restaurants that have surplus food at the end of the day. Instead of letting good food go to waste, these businesses can offer "surprise bags" at a discounted price. Users can browse nearby stores, purchase these bags, and enjoy delicious food while helping to reduce food waste in their community.

## Features

*   **Browse Nearby Stores:** Discover local stores and restaurants participating in the program.
*   **View Surprise Bags:** See details about the "surprise bags" available, including contents and price.
*   **Add to Cart:** Easily add desired items to your shopping cart.
*   **User Profile:** Manage your account and view your order history.
*   **Simple and Intuitive UI:** A clean and user-friendly interface for a seamless experience.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

*   Flutter SDK: Make sure you have the Flutter SDK installed on your machine. For more information, see the [Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  Clone the repo
    ```sh
    git clone https://github.com/FarkhadTut/hurryfoods.git
    ```
2.  Navigate to the project directory
    ```sh
    cd hurryfoods
    ```
3.  Install dependencies
    ```sh
    flutter pub get
    ```
4.  Run the app
    ```sh
    flutter run
    ```

## Project Structure

The project follows a clean architecture pattern, separating concerns into three main layers:

*   `lib/data`: This layer is responsible for data retrieval from sources like APIs or local databases. It contains data transfer objects (DTOs) and repository implementations.
*   `lib/domain`: This is the core layer of the application, containing the business logic. It includes entities, repository contracts (interfaces), and use cases.
*   `lib/presentation`: This layer is responsible for the UI and user interaction. It includes screens, widgets, and view models.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

# GEMINI.md

This document provides a high-level overview of the HurryFoods application, its purpose, and the technical implementation details.

## Application Purpose

HurryFoods is a mobile application designed to combat food waste by connecting users with local food businesses (stores, restaurants, bakeries) that have surplus food at the end of the day. Instead of discarding unsold items, these businesses can package them into "surprise bags" and sell them at a discounted price through the app.

This model creates a win-win-win situation:
*   **Users** get access to affordable, delicious food.
*   **Businesses** recover costs on surplus inventory and gain new customers.
*   **The Environment** benefits from a reduction in food waste.

## Implementation Details

The application is built using the Flutter framework, allowing for a cross-platform codebase that can be deployed to both Android and iOS from a single source.

### Architecture

The project follows a clean architecture pattern, which promotes a separation of concerns and makes the codebase more modular, scalable, and testable. The code is organized into three main layers:

*   **Presentation Layer (`lib/presentation`):** This layer is responsible for everything related to the UI and user interaction.
    *   **Screens (`lib/presentation/screens`):** Each screen in the app is represented by a widget (e.g., `HomeScreen`, `StoreDetailsScreen`).
    *   **Widgets (`lib/presentation/widgets`):** Reusable UI components, such as the `BottomNavBar`, are stored here.
    *   **View Models (`lib/presentation/view_models`):** This directory is intended for state management logic that is tied to the UI.

*   **Domain Layer (`lib/domain`):** This is the core of the application and contains the business logic. It is independent of any UI or data-sourcing frameworks.
    *   **Entities (`lib/domain/entities`):** These are the plain Dart objects that represent the core business models (e.g., `Store`, `Product`).
    *   **Repositories (`lib/domain/repositories`):** This directory defines the abstract contracts (interfaces) for data operations.
    *   **Use Cases (`lib/domain/use_cases`):** These classes encapsulate specific business rules and orchestrate the flow of data between the presentation and data layers.

*   **Data Layer (`lib/data`):** This layer is responsible for sourcing data from various origins, such as a remote API or a local database.
    *   **Data Sources (`lib/data/data_sources`):** These are the classes that directly interact with data sources.
    *   **DTOs (Data Transfer Objects) (`lib/data/dtos`):** These are models that are used to transfer data between the data layer and other parts of the application.
    *   **Repositories (`lib/data/repositories`):** This directory contains the concrete implementations of the repository contracts defined in the domain layer.

### Navigation

Navigation is handled using the `go_router` package, which provides a declarative routing solution that is well-suited for Flutter applications. It allows for deep linking and a clear separation of navigation logic from the UI.

### State Management

The application currently uses `StatelessWidget` and `StatefulWidget` for managing local UI state. For more complex, app-wide state, a more robust state management solution (like Provider or Riverpod) would be integrated into the `lib/presentation/view_models` directory.

### Dummy Data

During the initial development phases, the application uses dummy data defined in `lib/data/dummy_data.dart` to populate the UI. This allows for rapid UI development and testing without a live backend. In a production environment, this would be replaced with real data fetched from an API.

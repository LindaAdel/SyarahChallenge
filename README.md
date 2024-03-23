# challenge App

challenge App is an iOS app built with the MVVM (Model-View-ViewModel) architecture pattern. It leverages various analytics services to provide a personalized and data-driven user experience. The app also utilizes the Composite Strategy pattern to handle multiple analytics providers.
also the app consist of 3 screens login , signup and home the ui is made using swift ui . it has multpile events like user_login , user_signup , categorie_selected and button_clicked.

---

## Features

- User authentication using Firebase Auth
- Dynamic configuration using Firebase Remote Config
- Analytics tracking using Firebase Analytics, Amplitude, and Mixpanel
- Remote configuration strategy using Composite Strategy pattern
- Repository pattern in the data layer
  
---

## Architecture

The app follows the MVVM (Model-View-ViewModel) architecture, which helps to separate concerns and improve maintainability and testability. Here's an overview of the key components:

- Models: Data models representing the app's entities.
- Views: User interface components responsible for displaying information and capturing user input.
- ViewModels: Mediators between the Views and Models. They provide data and behavior for the Views and handle user interactions.
- Services: Integration with external services such as Firebase Auth, Firebase Remote Config, Firebase Analytics, Amplitude, and Mixpanel.
- Remote Configuration Strategy: Utilizes the Composite Strategy pattern to handle dynamic configuration based on remote values.
- Repository Pattern: The app employs the Repository pattern in the data layer to handle remote API interactions and data retrieval.

---

## Integrations

The app integrates with the following services:

- Firebase Auth: Provides user authentication and authorization capabilities. Users can sign up, sign in, and access secure features.
- Firebase Remote Config: Offers dynamic configuration options by fetching values from the cloud. The app adapts behavior based on the retrieved configuration.
- Firebase Analytics: Enables event tracking and user behavior analysis. It provides insights into user interactions and helps improve app performance.
- Amplitude: Provides additional analytics capabilities, allowing in-depth analysis of user behavior and marketing campaign tracking.
- Mixpanel Analytics: Offers advanced analytics features, including user segmentation, A/B testing, and funnel analysis.

---

## Remote Configuration Strategy

The app employs a remote configuration strategy using the Composite Strategy pattern. This approach allows the app to dynamically configure its behavior based on remote values from Firebase Remote Config.

- Composite Strategy: The app defines a composite strategy that combines multiple configuration strategies, such as Firebase Remote Config, to determine the final configuration values.
- RemoteConfigManager: This class handles fetching remote configuration values from Firebase Remote Config and manages the composite strategy for applying the configuration.

---

## Data Layer and Repository Pattern

The app follows the Repository pattern in the data layer to handle remote API interactions and data retrieval. This pattern provides a centralized and abstracted layer for managing data sources, such as network requests, databases, or other external APIs.

- Repositories: The app defines repositories that encapsulate the logic for retrieving and manipulating data from remote APIs. These repositories abstract the underlying data sources and provide a consistent interface for the ViewModel layer to interact with.
- Data Sources: The repositories interact with remote APIs, such as Firebase Auth and other services, to fetch and update data.

---

## Analytics Services

The app includes support for multiple analytics services, including Firebase Analytics, Amplitude, and Mixpanel. Here's an overview of the implementation:

- AnalyticsServiceProtocol: This protocol defines the common interface for all analytics services. It includes methods for tracking events.
- FirebaseAnalyticsService: This class implements the AnalyticsServiceProtocol and provides the integration with Firebase Analytics.
- AmplitudeService: This class implements the AnalyticsServiceProtocol and provides the integration with Amplitude.
- MixpanelService: This class implements the AnalyticsServiceProtocol and provides the integration with Mixpanel.

---

## Remote Config and Composite Analytics Provider

The app includes a RemoteConfig class that serves as a shared instance for fetching remote configuration values from Firebase Remote Config. It handles retrieving the configuration values and updating the app's behavior based on those values.

The CompositeAnalyticsProvider class is responsible for handling the composite strategy for analytics tracking. It utilizes the Composite Strategy pattern to combine the analytics services (Firebase Analytics, Amplitude, and Mixpanel) and provides a unified interface for tracking events and user properties.

---
# Dependency Injection
The app uses dependency injection to manage dependencies between components. It utilizes a property wrapper @Inject annotation and a DI container with an assembler.

Property Wrapper @Inject: The @Inject property wrapper is used to mark dependencies that need to be injected into the components. By using @Inject, the dependencies are automatically resolved and provided to the component.

DI Container and Assembler: The DI container is responsible for managing the lifecycle of dependencies and providing them when needed. The assembler is used to configure the DI container by registering dependencies and their respective implementations.

The DI container and assembler implementation can be found in the DIContainer and Assembler files.

---
# Combine
The app uses Combine for data transport and asynchronous operations. Combine allows you to handle asynchronous events, such as network requests and data updates, in a declarative manner. It provides a wide range of operators and features for reactive programming.

You can find examples of using Combine in the app's codebase, particularly in the interaction between the interactor and the repository for fetching and processing data.

---

## Dependencies

The app utilizes the following dependencies managed by CocoaPods:

- FirebaseAnalytics: Enables event tracking and analytics provided by Firebase.
- FirebaseAuth: Provides user authentication and authorization capabilities using Firebase.
- Mixpanel-swift: Allows integration with Mixpanel for advanced analytics and user behavior tracking.
- FirebaseRemoteConfig: Handles dynamic configuration by fetchingvalues from Firebase Remote Config.
- Alamofire: A Swift-based HTTP networking library for making network requests.

---

## Getting Started

To run the app locally, follow these steps:

1. Clone the repository
2. Install CocoaPods dependencies: pod install
3. Open the Xcode workspace
4. Build and run the app in Xcode.


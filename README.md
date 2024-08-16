# My Flutter Projects Repository

This repository contains all the Flutter projects I've created. Each project showcases various features and functionalities built using the Flutter framework. Below is a brief overview of the projects included.

## Project 1: Goal Quest

**Goal Quest** is a simple Flutter application where users can add and remove quests. The app features several key components and functionalities:

### Key Features

- **Gradient Background**: Utilizes a customizable gradient background, enhancing the visual appeal of the app.
- **Add Quest Button**: A button that triggers a modal overlay for users to input new quests.
- **Quest List**: Displays a list of added quests, which users can tap to remove.

### Components

1. **GradientContainer**:

   - **Purpose**: Provides a gradient background for the app.
   - **Features**: Accepts two colors to create a gradient effect, making the UI visually attractive.

2. **QuestButton**:

   - **Purpose**: Manages the addition and removal of quests.
   - **Features**: Displays an "Add your quest" button. Clicking it opens a modal overlay for quest entry. Also includes functionality to remove quests from the list.

3. **QuestOverlay**:
   - **Purpose**: Facilitates quest input through a modal bottom sheet.
   - **Features**: Includes a text field for entering quests, and buttons to add or cancel the quest.

### Procedure

1. **App Initialization**: The app starts by running `main.dart`, which sets up a `MaterialApp` and wraps the content in a `GradientContainer`.

2. **UI Setup**: The `GradientContainer` widget creates a full-screen gradient background and includes the `QuestButton`.

3. **Adding Quests**: Clicking the "Add your quest" button in `QuestButton` opens a `QuestOverlay` where users can input new quests.

4. **Managing Quests**: The list of quests is displayed in `QuestButton`, allowing users to tap on a quest to remove it.

This project demonstrates effective use of Flutter’s widget system to create a functional and engaging user interface.

# Trying ChatLogger

## 🎯 Core Functionality
* **Real-time chat logging**: Message capture from both Legacy Chat and TextChatService.
* **Line counter**: Rotation system included (auto-save after X messages).
* **Auto-scroll toggle**: Stick to bottom or manual scroll options.
* **Font size controls**: (A- / A+) buttons with persistent sizing.
* **Text wrapping toggle**: Enable or disable line wrapping.
* **Timestamp toggle**: Show or hide message timestamps.
* **Message limit system**: Prevents memory overflow (configurable max lines).

## 🔍 Search & Filter System
* **Internal search bar**: Filter messages in real-time by keyword.
* **Player whitelist**: Only show messages from selected users.
* **Blacklist system**: Block specific users from being logged.
* **Auto-filter detection**: Automatically adds new players to whitelist.
* **Search functionality**: Located in filter window to find players quickly.

## 🎨 Visual Customization
* **Custom user colors**: Assign unique colors per username.
* **Color presets**: Quick color selection buttons (6 presets).
* **Theme customization**: Change background and accent colors.
* **Opacity/transparency slider**: Make the window semi-transparent.
* **Click-through mode**: Allow clicks to pass through to the game.
* **Resizable windows**: Drag edges to resize (Windows-style).
* **Draggable interface**: Move windows anywhere on screen.
* **Minimize function**: Collapse to title bar only.
* **Professional dark theme**: Designed with rounded corners.

## 🔔 Smart Monitoring
* **Keyword alert system**: Define words to watch for.
* **Visual highlights**: Messages with keywords get a red background.
* **Sound notifications**: Plays alert sound when keyword detected.
* **Display Name toggle**: Switch between showing DisplayName or Username.
* **Whisper detection**: Special color for private messages.
* **Team chat detection**: Different color for team messages.

## 💾 Data Management
* **Auto-save to file**: Saves chat logs as `.txt` files.
* **Manual save button**: Save current session anytime.
* **Copy to clipboard**: Copy individual lines (via click or right-click).
* **Copy all function**: Copy entire chat history.
* **Auto-rotation saves**: Creates new file after X messages.
* **Configuration persistence**: Saves all settings to JSON file.
* **Session recovery**: Remembers window position, size, filters, colors, and keywords.

## 🛡️ Advanced Features
* **Context menu** (Right-click on messages):
    * Copy individual line.
    * Copy all chat history.
* **Panic key (RightCtrl)**: Instantly hide/show entire interface.
* **Close confirmation**: Prevents accidental closure.
* **Multiple window management**:
    * Main chat window.
    * Filter/whitelist window.
    * Blacklist window.
    * Color customization window.
    * Settings window.
* **Settings window includes**:
    * Opacity slider.
    * Click-through toggle.
    * Display name toggle.
    * Keyword manager with add/remove.
    * Blacklist quick access.

## 🎮 User Experience
* **Clean UI**: No placeholder text in textboxes (starts clean).
* **Responsive design**: Adapts to different window sizes.
* **Professional tooltips**: Clear button labels.
* **Color-coded messages**: Whispers (blue), Team (green), Keywords (red).
* **Smooth scrolling**: Automatic or manual control.
* **Memory efficient**: Auto-prune old messages to keep performance high.
* **Multi-language ready**: Spanish UI (easily translatable).

## 📊 Technical Features
* **Dual chat system support**: Works with both old and new Roblox chat.
* **Username/UserId filtering**: Supports both formats.
* **Async player name fetching**: Works even when player has left the server.
* **Error handling**: Graceful fallbacks for missing functions.
* **File system integration**: Uses `writefile`/`readfile` when available.
* **Sound system integration**: Plays notification sounds.

## 🔧 Customization Options
* Adjustable rotation frequency.
* Configurable max lines.
* Custom save directory.
* Silent rotation mode.
* Clear after rotation option.
* Multiple color preset buttons.
* Full RGB color control (0-255).

# Trying-ChatLogger
🎯 Core Functionality

Real-time chat logging with message capture from both Legacy Chat and TextChatService
Line counter with rotation system (auto-save after X messages)
Auto-scroll toggle - stick to bottom or manual scroll
Font size controls (A- / A+) with persistent sizing
Text wrapping toggle - enable/disable line wrapping
Timestamp toggle - show/hide message timestamps
Message limit system - prevents memory overflow (configurable max lines)

🔍 Search & Filter System

Internal search bar - filter messages in real-time by keyword
Player whitelist - only show messages from selected users
Blacklist system - block specific users from being logged
Auto-filter detection - automatically adds new players to whitelist
Search functionality in filter window to find players quickly

🎨 Visual Customization

Custom user colors - assign unique colors per username
Color presets - quick color selection buttons (6 presets)
Theme customization - change background and accent colors
Opacity/transparency slider - make the window semi-transparent
Click-through mode - allow clicks to pass through to the game
Resizable windows - drag edges to resize (Windows-style)
Draggable interface - move windows anywhere on screen
Minimize function - collapse to title bar only
Professional dark theme with rounded corners

🔔 Smart Monitoring

Keyword alert system - define words to watch for
Visual highlights - messages with keywords get red background
Sound notifications - plays alert sound when keyword detected
Display Name toggle - switch between showing DisplayName or Username
Whisper detection - special color for private messages
Team chat detection - different color for team messages

💾 Data Management

Auto-save to file - saves chat logs as .txt files
Manual save button - save current session anytime
Copy to clipboard - copy individual lines (right-click menu)
Copy all function - copy entire chat history
Auto-rotation saves - creates new file after X messages
Configuration persistence - saves all settings to JSON file
Session recovery - remembers window position, size, filters, colors, keywords

🛡️ Advanced Features

Context menu (right-click on messages):

Copy individual line
Copy all chat history


Panic key (RightCtrl) - instantly hide/show entire interface
Close confirmation - prevents accidental closure
Multiple window management:

Main chat window
Filter/whitelist window
Blacklist window
Color customization window
Settings window


Settings window includes:

Opacity slider
Click-through toggle
Display name toggle
Keyword manager with add/remove
Blacklist quick access



🎮 User Experience

Clean UI - no placeholder text in textboxes
Responsive design - adapts to different window sizes
Professional tooltips and button labels
Color-coded messages - whispers (blue), team (green), keywords (red)
Smooth scrolling - automatic or manual control
Memory efficient - auto-prune old messages
Multi-language ready - Spanish UI (easily translatable)

📊 Technical Features

Dual chat system support - works with both old and new Roblox chat
Username/UserId filtering - supports both formats
Async player name fetching - works even when player left
Error handling - graceful fallbacks for missing functions
File system integration - uses writefile/readfile when available
Sound system integration - plays notification sounds

🔧 Customization Options

Adjustable rotation frequency
Configurable max lines
Custom save directory
Silent rotation mode
Clear after rotation option
Multiple color preset buttons
Full RGB color control (0-255 per channel)

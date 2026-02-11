# 📝 warn_ChatLogger+TranslatorV1.1

<div align="center">

![Version](https://img.shields.io/badge/version-1.1-blue.svg)
![Roblox](https://img.shields.io/badge/platform-Roblox-red.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Languages](https://img.shields.io/badge/languages-18-orange.svg)

**Advanced chat logging and real-time translation for Roblox**

[Features](#-features) • [Installation](#-installation) • [Documentation](#-documentation) • [Languages](#-supported-languages)

</div>

---

## 📖 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [Detailed Documentation](#-detailed-documentation)
  - [🇺🇸 English](#-english)
  - [🇪🇸 Español](#-español)
  - [🇨🇳 中文](#-中文)
  - [🇷🇺 Русский](#-русский)
  - [🇮🇩 Indonesia](#-indonesia)
- [Technical Specifications](#-technical-specifications)
- [Supported Languages](#-supported-languages)
- [FAQ](#-faq)

---

## 🎯 Overview

Chat Logger + Translator V1.1 is a comprehensive Roblox chat management script that provides:

- ✅ **Advanced logging** with auto-rotation and file management
- 🌐 **Real-time translation** supporting 18 languages
- 🎨 **Full customization** of colors, themes, and user preferences
- 🔍 **Powerful filtering** with whitelist and blacklist systems
- 💾 **Persistent storage** for all settings and data
- 🚀 **High performance** with caching and optimization

Compatible with most Roblox executors including Synapse X, Script-Ware, Krnl, and Fluxus.

---

## ✨ Features

### 🗂️ Chat Logging
- Real-time message capture from both legacy and modern chat systems
- Configurable log rotation (default: 2000 lines max)
- Auto-save every N lines (default: 300 lines)
- Manual save to persistent storage
- Search functionality with highlighting
- Timestamp display toggle
- Text wrapping control
- Copy individual messages or entire history

### 🌍 Translation System
- **3 Translation APIs**:
  - 🔷 Lingva Translate (Unlimited)
  - 🔷 LibreTranslate (Unlimited)
  - 🔷 MyMemory (1000/day with auto-fallback)
- **18 Supported Languages**: EN, ES, PT, FR, DE, IT, RU, ZH, JA, KO, AR, HI, TR, PL, NL, VI, TH, ID
- **Incoming Translation**: Translate messages you receive
- **Outgoing Translation**: Translate your messages before sending
- Translation cache for performance
- Daily usage tracking
- Detected language display
- Two display styles (Inline / Replace)

### 🎨 Customization
- Per-user color assignment with RGB picker
- 6 preset colors for quick selection
- Interface theme customization (Background + Accent)
- Font size adjustment (12-26px)
- Window opacity control
- Click-through mode
- 5 UI languages (EN, ES, ZH, RU, ID)

### 👥 User Management
- **Whitelist System**: Filter to show only selected players
- **Blacklist System**: Block specific users completely
- **Auto-add**: Automatically add new players joining server
- Search players by name
- Batch select/deselect operations
- Persistent user preferences

### 🔔 Keyword Alerts
- Monitor custom keywords in chat
- Automatic message highlighting
- Multiple keyword support
- Persistent keyword storage

### 🪟 Window Management
- Draggable windows with position saving
- Resizable with minimum size constraints
- Minimize/restore functionality
- Multiple sub-windows:
  - 📋 User Filter Window
  - 🚫 Blacklist Window
  - 🎨 Color Customization Window
  - ⚙️ Advanced Settings Window
  - 🌐 Translation Settings Window
- Panic key (Right Control) to hide/show instantly

---

## 💾 Installation

1. **Download** the script from this repository
2. **Copy** the entire script content
3. **Open** your preferred Roblox executor
4. **Paste** the script into the executor
5. **Execute** and the logger will appear

**First-time setup**: The window will appear in the default position. All settings are automatically saved.

---

## 🚀 Quick Start

### Basic Usage
1. ✅ Script loads automatically with default settings
2. 🎯 Click **Filters** to select which players to monitor
3. 🌐 Click **🌐** button to enable translation
4. ⚙️ Access **Settings** (⚙) for advanced configuration
5. 🎨 Use **Colors** to customize appearance

### Keyboard Shortcuts
- **Right Control**: Hide/show all windows instantly (Panic key)

### Essential Buttons
| Button | Function |
|--------|----------|
| `Log [ON/OFF]` | Enable/disable message logging |
| `Auto↓ [ON/OFF]` | Toggle auto-scroll to newest messages |
| `🌐 [ON/OFF]` | Enable/disable translation |
| `Filters` | Open user filter window |
| `Save` | Manually save chat log |
| `⚙` | Open advanced settings |

---

## 📚 Detailed Documentation

<details>
<summary><h3>🇺🇸 ENGLISH - Click to expand</h3></summary>

### MAIN WINDOW CONTROLS

#### **Title Bar Buttons (Top)**
- **`Log [ON/OFF]`** - Toggles chat message logging. When OFF, messages are not saved to the log.
- **`Auto↓ [ON/OFF]`** - Auto-scroll control. When ON, the chat automatically scrolls to the newest messages. When OFF, you can scroll up to read history without it jumping to the bottom.
- **`A-`** - Decrease font size (minimum 12px)
- **`A+`** - Increase font size (maximum 26px)
- **`_`** (Minimize) - Minimizes the window to a small bar. Click again to restore.
- **`×`** (Close) - Shows a confirmation dialog before closing the logger.

#### **Counter Bar (Below title)**
- Displays: `Lines X/Y (remaining Z) • Rot: N`
  - **Lines X/Y** = Current lines / Maximum lines before rotation
  - **Remaining Z** = How many more lines until auto-save
  - **Rot: N** = Rotation counter (how many times the log has been saved)

#### **`Clear`** Button (Counter bar, right side)
- Clears all current messages from the display (does not delete saved files)

#### **Search Bar** (Hidden by default, shown when 🔍 is clicked)
- **Text box** - Type keywords to search in chat history. Matching messages are highlighted.
- **`Close`** button - Closes the search bar

#### **Input Bar** (Above bottom bar)
- **Text box** - Type your message here. It will be translated to your selected outgoing language before sending.
- **`Send`** button - Sends your message to chat (supports whispers with `/w username message`)

#### **Bottom Bar Buttons**
- **`Filters`** - Opens the User Filter window to select which players' messages to show
- **`Save`** - Manually saves the current chat log to a file
- **`Wrap [ON/OFF]`** - Toggles text wrapping. When ON, long messages wrap to multiple lines. When OFF, text scrolls horizontally.
- **`Time [ON/OFF]`** - Shows/hides timestamps on each message
- **`Colors`** - Opens the Color Customization window
- **`⚙`** - Opens Advanced Settings window
- **`🔍`** - Opens/closes the search bar
- **`🌐 [ON/OFF]`** - Enables/disables automatic translation of incoming messages

#### **Context Menu** (Right-click on any message)
- **`Copy line`** - Copies the entire message with username and timestamp
- **`Copy original`** - Copies only the original message text (before translation)
- **`Copy translation`** - Copies only the translated text
- **`Copy all`** - Copies all chat history to clipboard

---

### FILTERS WINDOW

**Purpose:** Control which players' messages appear in your log (whitelist mode)

#### **Title Bar**
- **`User filters`** - Window title
- **`×`** - Closes the Filters window

#### **Search Bar**
- Type a player's name to filter the list below

#### **Control Buttons**
- **`Select`** - Selects ALL players currently visible in the list
- **`Clear`** - Deselects ALL players
- **`Auto-Add [ON/OFF]`** - When ON, new players joining the server are automatically added to your filter
- **`Ref`** (Refresh) - Refreshes the player list

#### **Player List** (Scrollable area)
- **Checkboxes** - Click to select/deselect individual players
- Shows: Username, Display Name (if different), and UserId
- Selected players' messages will appear in your log

#### **Status Label** (Bottom)
- Shows: `Selected: X` (number of currently selected players)

---

### BLACKLIST WINDOW

**Purpose:** Block messages from specific users completely

#### **Title Bar**
- **`Blacklist`** - Window title
- **`×`** - Closes the Blacklist window

#### **Blacklist** (Scrollable area)
- Shows all blocked users
- **`×`** button on each row - Removes user from blacklist

#### **Add User Section** (Bottom)
- **Text box** - Enter username or UserId to block
- **`Add`** button - Adds the user to blacklist

#### **Status Label** (Bottom)
- Shows: `Blocked: X` (number of blocked users)

---

### COLORS WINDOW

**Purpose:** Customize colors for individual users and interface theme

#### **Title Bar**
- **`Colors (Users / Interface)`** - Window title
- **`×`** - Closes the Colors window

#### **User Color Section**
- **Label:** `Color per user:`
- **Username box** - Enter the username to colorize
- **R, G, B boxes** - Enter RGB values (0-255) for custom color
- **6 preset color buttons** - Click to quickly fill RGB boxes with preset colors
- **`Apply`** button - Applies the color to the specified user (all their messages will use this color)
- **`Recolor`** button - Recolors ALL existing messages from this user with the new color

#### **Interface Theme Section**
- **Label:** `Interface theme (BG / Accent):`
- **First row (BG):** R, G, B boxes - Background color of the main window
- **Second row (Accent):** R, G, B boxes - Accent color for bars and buttons
- **6 preset color buttons** - Click to quickly apply colors to Accent
- **`Apply Theme`** button - Applies the theme colors to the entire interface
- **`Close`** button - Closes the Colors window

---

### ADVANCED SETTINGS WINDOW

**Purpose:** Configure all logger behavior and system settings

#### **Title Bar**
- **`⚙ Advanced Settings`** - Window title
- **`×`** - Closes the Settings window

#### **Settings List** (Scrollable)

**Display Options:**
- **`Show Display Names: [ON/OFF]`** - Toggle between showing Roblox Display Names vs. Usernames
- **`Click-Through mode: [ON/OFF]`** - When ON, you can click through the logger window (useful for keeping it visible while playing)

**UI Language Selector:**
- **`Language: [EN] [ES] [ZH] [RU] [ID]`** - Five buttons to switch interface language
  - **EN** = English
  - **ES** = Spanish (Español)
  - **ZH** = Chinese (中文)
  - **RU** = Russian (Русский)
  - **ID** = Indonesian (Indonesia)

**Log Management:**
- **`Max Log Lines:`** - Text box to set maximum lines before rotation (default: 2000)
- **`Auto-Save at (lines):`** - Text box to set how many lines trigger auto-save (default: 300)

**Keywords Section:**
- **Header:** `═══ Keywords (Alerts) ═══`
- **Text box** - Enter keyword to monitor
- **`Add`** button - Adds keyword to monitoring list
- **Keyword list** (below) - Shows all monitored keywords with `×` button to remove each

**`Open Blacklist`** button - Opens the Blacklist window from here

---

### TRANSLATION SETTINGS WINDOW

**Purpose:** Configure all translation features and APIs

#### **Title Bar**
- **`🌐 Translation Settings`** - Window title
- **`×`** - Closes the Translation Settings window

#### **Main Settings**

**Enable Translation:**
- **`Enable Translation: [ON/OFF]`** - Master switch for all translation features

**Incoming Messages Section:**
- **Header:** `▸ Translate messages to: (Incoming)`
- **18 language buttons** - Click to select target language for incoming chat
  - 🇺🇸 EN, 🇪🇸 ES, 🇧🇷 PT, 🇫🇷 FR, 🇩🇪 DE, 🇮🇹 IT, 🇷🇺 RU, 🇨🇳 ZH
  - 🇯🇵 JA, 🇰🇷 KO, 🇸🇦 AR, 🇮🇳 HI, 🇹🇷 TR, 🇵🇱 PL, 🇳🇱 NL, 🇻🇳 VI, 🇹🇭 TH, 🇮🇩 ID

**Outgoing Messages Section:**
- **Header:** `▸ Outgoing Message Language (Send):`
- **18 language buttons** - Click to select what language YOUR messages will be translated to before sending

**API Selection:**
- **Header:** `▸ Translation API:`
- **Three radio buttons:**
  - **`○ Lingva (Unlimited)`** - Free, no daily limit
  - **`○ LibreTranslate (Unlimited)`** - Free, no daily limit
  - **`○ MyMemory (1000/day)`** - Free, 1000 requests per day
- Selected API shows **`●`** instead of **`○`**

**Display Options:**
- **`Show original message: [ON/OFF]`** - When ON, shows both original and translation
- **`Show detected language: [ON/OFF]`** - When ON, displays which language was detected
- **`Auto-fallback to unlimited: [ON/OFF]`** - When ON, automatically switches to unlimited API if daily limit is reached
- **`Translation display style:`**
  - **`Inline`** button - Shows translation below original message
  - **`Replace`** button - Replaces original with translation

**API Usage Info:**
- **`Today's usage: X/Y`** or **`∞`** - Shows how many translations used today
- **`Reset Counter`** button - Resets the daily usage counter manually

---

### VISUAL INDICATORS

**API Status (Top of window):**
- **`🌐 ON | API: [name] | Left: X`** - Translation enabled, showing current API and remaining requests
- **`🌐 ON | API: [name] | Left: ∞`** - Translation enabled with unlimited API
- **`🌐 OFF`** - Translation disabled

**Message Colors:**
- **White** - Normal messages
- **Blue** - Whisper messages (prefixed with `[W]`)
- **Green** - Team chat messages
- **Light Blue** - Translated text
- **Orange** - Detected language indicator
- **Custom Colors** - User-assigned colors

**Button States:**
- **Green background** - Feature is ON or item is selected
- **Gray background** - Feature is OFF or item is not selected
- **Blue background** - Selected language or API

</details>

<details>
<summary><h3>🇪🇸 ESPAÑOL - Click para expandir</h3></summary>

### CONTROLES DE VENTANA PRINCIPAL

#### **Botones de Barra de Título (Arriba)**
- **`Log [ON/OFF]`** - Activa/desactiva el registro de mensajes de chat. Cuando está OFF, los mensajes no se guardan.
- **`Auto↓ [ON/OFF]`** - Control de desplazamiento automático. Cuando está ON, el chat se desplaza automáticamente a los mensajes más nuevos.
- **`A-`** - Disminuir tamaño de fuente (mínimo 12px)
- **`A+`** - Aumentar tamaño de fuente (máximo 26px)
- **`_`** (Minimizar) - Minimiza la ventana. Haz clic nuevamente para restaurar.
- **`×`** (Cerrar) - Muestra un diálogo de confirmación antes de cerrar.

#### **Barra de Contador**
- Muestra: `Líneas X/Y (restantes Z) • Rot: N`
  - **Líneas X/Y** = Líneas actuales / Líneas máximas antes de rotación
  - **Restantes Z** = Cuántas líneas más hasta el guardado automático
  - **Rot: N** = Contador de rotación (veces que se ha guardado)

#### **Botón `Clear`**
- Limpia todos los mensajes actuales de la pantalla

#### **Barra de Búsqueda** (Mostrada al hacer clic en 🔍)
- **Cuadro de texto** - Escribe palabras clave para buscar. Los mensajes coincidentes se resaltan.
- **Botón `Close`** - Cierra la barra de búsqueda

#### **Barra de Entrada**
- **Cuadro de texto** - Escribe tu mensaje aquí. Se traducirá antes de enviar.
- **Botón `Send`** - Envía tu mensaje al chat (soporta susurros con `/w usuario mensaje`)

#### **Botones de Barra Inferior**
- **`Filters`** - Abre ventana de Filtro de Usuario
- **`Save`** - Guarda manualmente el registro de chat
- **`Wrap [ON/OFF]`** - Activa/desactiva el ajuste de texto
- **`Time [ON/OFF]`** - Muestra/oculta marcas de tiempo
- **`Colors`** - Abre ventana de Personalización de Colores
- **`⚙`** - Abre ventana de Configuración Avanzada
- **`🔍`** - Abre/cierra la barra de búsqueda
- **`🌐 [ON/OFF]`** - Activa/desactiva traducción automática

#### **Menú Contextual** (Clic derecho en cualquier mensaje)
- **`Copy line`** - Copia el mensaje completo
- **`Copy original`** - Copia solo el texto original
- **`Copy translation`** - Copia solo el texto traducido
- **`Copy all`** - Copia todo el historial de chat

---

### VENTANA DE FILTROS

**Propósito:** Controlar qué mensajes de jugadores aparecen en tu registro

#### **Botones de Control**
- **`Seleccionar`** - Selecciona TODOS los jugadores visibles
- **`Limpiar`** - Deselecciona TODOS los jugadores
- **`Auto-Add [ON/OFF]`** - Cuando está ON, los nuevos jugadores se agregan automáticamente
- **`Ref`** (Refrescar) - Refresca la lista de jugadores

#### **Lista de Jugadores**
- **Casillas de verificación** - Haz clic para seleccionar/deseleccionar jugadores
- Muestra: Nombre de usuario, Nombre de visualización y UserId

#### **Etiqueta de Estado**
- Muestra: `Seleccionados: X`

---

### VENTANA DE LISTA NEGRA

**Propósito:** Bloquear mensajes de usuarios específicos

#### **Sección Agregar Usuario**
- **Cuadro de texto** - Ingresa nombre de usuario o UserId para bloquear
- **Botón `Add`** - Agrega el usuario a la lista negra

#### **Etiqueta de Estado**
- Muestra: `Bloqueados: X`

---

### VENTANA DE COLORES

**Propósito:** Personalizar colores para usuarios individuales y tema de interfaz

#### **Sección de Color de Usuario**
- **Cuadro de nombre de usuario** - Ingresa el nombre de usuario para colorear
- **Cuadros R, G, B** - Ingresa valores RGB (0-255)
- **6 botones de color predefinidos** - Haz clic para aplicar colores rápidamente
- **Botón `Apply`** - Aplica el color al usuario especificado
- **Botón `Recolor`** - Recolorea TODOS los mensajes existentes de este usuario

#### **Sección de Tema de Interfaz**
- **Primera fila (BG):** Cuadros R, G, B - Color de fondo
- **Segunda fila (Acento):** Cuadros R, G, B - Color de acento
- **6 botones de color predefinidos** - Para aplicar colores al tema
- **Botón `Apply Theme`** - Aplica los colores del tema
- **Botón `Close`** - Cierra la ventana

---

### VENTANA DE CONFIGURACIÓN AVANZADA

**Propósito:** Configurar comportamiento del logger

#### **Opciones de Visualización**
- **`Mostrar Nombres de Visualización: [ON/OFF]`** - Alterna entre Nombres de Visualización vs. Nombres de Usuario
- **`Modo Click-Through: [ON/OFF]`** - Permite hacer clic a través de la ventana

#### **Selector de Idioma de UI**
- **`Idioma: [EN] [ES] [ZH] [RU] [ID]`** - Cinco botones para cambiar el idioma de la interfaz

#### **Gestión de Registro**
- **`Líneas de Registro Máximas:`** - Establece líneas máximas antes de rotación (predeterminado: 2000)
- **`Auto-Guardar en (líneas):`** - Establece cuántas líneas activan guardado (predeterminado: 300)

#### **Sección de Palabras Clave**
- **Cuadro de texto** - Ingresa palabra clave para monitorear
- **Botón `Add`** - Agrega palabra clave
- **Lista de palabras clave** - Muestra todas con botón `×` para eliminar

---

### VENTANA DE CONFIGURACIÓN DE TRADUCCIÓN

**Propósito:** Configurar funciones y APIs de traducción

#### **Activar Traducción**
- **`Activar Traducción: [ON/OFF]`** - Interruptor maestro para todas las funciones

#### **Sección de Mensajes Entrantes**
- **18 botones de idioma** - Selecciona idioma objetivo para chat entrante

#### **Sección de Mensajes Salientes**
- **18 botones de idioma** - Selecciona a qué idioma se traducirán TUS mensajes

#### **Selección de API**
- **`○ Lingva (Ilimitado)`** - Gratis, sin límite diario
- **`○ LibreTranslate (Ilimitado)`** - Gratis, sin límite diario
- **`○ MyMemory (1000/día)`** - Gratis, 1000 solicitudes por día

#### **Opciones de Visualización**
- **`Mostrar mensaje original: [ON/OFF]`** - Muestra original y traducción o solo traducción
- **`Mostrar idioma detectado: [ON/OFF]`** - Muestra qué idioma se detectó
- **`Auto-respaldo a ilimitado: [ON/OFF]`** - Cambia automáticamente a API ilimitada
- **`Estilo de visualización:`**
  - **`En línea`** - Muestra traducción debajo del original
  - **`Reemplazar`** - Reemplaza el original

#### **Información de Uso de API**
- **`Uso de hoy: X/Y`** o **`∞`** - Muestra traducciones usadas hoy
- **Botón `Reiniciar Contador`** - Reinicia contador manualmente

---

### INDICADORES VISUALES

**Estado de API:**
- **`🌐 ON | API: [nombre] | Quedan: X`** - Traducción activada
- **`🌐 OFF`** - Traducción desactivada

**Colores de Mensajes:**
- **Blanco** - Mensajes normales
- **Azul** - Susurros (prefijo `[W]`)
- **Verde** - Chat de equipo
- **Azul Claro** - Texto traducido
- **Naranja** - Idioma detectado

**Estados de Botones:**
- **Fondo verde** - Función ON o elemento seleccionado
- **Fondo gris** - Función OFF
- **Fondo azul** - Idioma o API seleccionado

</details>

<details>
<summary><h3>🇨🇳 中文 - 点击展开</h3></summary>

### 主窗口控制

#### **标题栏按钮（顶部）**
- **`Log [ON/OFF]`** - 切换聊天消息记录。OFF时消息不保存。
- **`Auto↓ [ON/OFF]`** - 自动滚动控制。ON时自动滚动到最新消息。
- **`A-`** - 减小字体大小（最小12px）
- **`A+`** - 增加字体大小（最大26px）
- **`_`**（最小化）- 将窗口最小化。再次点击恢复。
- **`×`**（关闭）- 关闭前显示确认对话框。

#### **计数器栏**
- 显示：`Lines X/Y (remaining Z) • Rot: N`
  - **Lines X/Y** = 当前行数 / 轮换前最大行数
  - **Remaining Z** = 距离自动保存还有多少行
  - **Rot: N** = 轮换计数器（已保存次数）

#### **`Clear`** 按钮
- 清除显示中的所有当前消息

#### **搜索栏**（点击🔍时显示）
- **文本框** - 输入关键词搜索。匹配消息会被突出显示。
- **`Close`** 按钮 - 关闭搜索栏

#### **输入栏**
- **文本框** - 在此输入消息。发送前会翻译。
- **`Send`** 按钮 - 发送消息到聊天（支持`/w 用户名 消息`私聊）

#### **底栏按钮**
- **`Filters`** - 打开用户过滤窗口
- **`Save`** - 手动保存聊天日志
- **`Wrap [ON/OFF]`** - 切换文本换行
- **`Time [ON/OFF]`** - 显示/隐藏时间戳
- **`Colors`** - 打开颜色自定义窗口
- **`⚙`** - 打开高级设置窗口
- **`🔍`** - 打开/关闭搜索栏
- **`🌐 [ON/OFF]`** - 启用/禁用自动翻译

#### **上下文菜单**（右键点击任何消息）
- **`Copy line`** - 复制完整消息
- **`Copy original`** - 仅复制原始文本
- **`Copy translation`** - 仅复制翻译文本
- **`Copy all`** - 复制所有聊天历史

---

### 过滤器窗口

**目的：** 控制哪些玩家的消息出现在日志中

#### **控制按钮**
- **`全选`** - 选择列表中所有玩家
- **`清除`** - 取消选择所有玩家
- **`Auto-Add [ON/OFF]`** - ON时自动添加新玩家
- **`Ref`**（刷新）- 刷新玩家列表

#### **玩家列表**
- **复选框** - 点击选择/取消选择玩家
- 显示：用户名、显示名称、UserId

#### **状态标签**
- 显示：`Selected: X`（选定玩家数量）

---

### 黑名单窗口

**目的：** 完全阻止特定用户的消息

#### **添加用户部分**
- **文本框** - 输入要阻止的用户名或UserId
- **`Add`** 按钮 - 添加用户到黑名单

#### **状态标签**
- 显示：`Blocked: X`（被阻止的用户数量）

---

### 颜色窗口

**目的：** 为单个用户和界面主题自定义颜色

#### **用户颜色部分**
- **用户名框** - 输入要着色的用户名
- **R、G、B框** - 输入RGB值（0-255）
- **6个预设颜色按钮** - 点击快速填充RGB
- **`Apply`** 按钮 - 应用颜色到用户
- **`Recolor`** 按钮 - 重新着色所有现有消息

#### **界面主题部分**
- **第一行（BG）：** R、G、B框 - 背景颜色
- **第二行（强调）：** R、G、B框 - 强调颜色
- **6个预设颜色按钮** - 快速应用主题
- **`Apply Theme`** 按钮 - 应用主题
- **`Close`** 按钮 - 关闭窗口

---

### 高级设置窗口

**目的：** 配置记录器行为

#### **显示选项**
- **`显示显示名称：[ON/OFF]`** - 在显示名称与用户名之间切换
- **`点击穿透模式：[ON/OFF]`** - 允许点击穿过窗口

#### **UI语言选择器**
- **`语言：[EN] [ES] [ZH] [RU] [ID]`** - 五个按钮切换界面语言

#### **日志管理**
- **`最大日志行数：`** - 设置轮换前最大行数（默认：2000）
- **`自动保存于（行）：`** - 设置触发自动保存的行数（默认：300）

#### **关键词部分**
- **文本框** - 输入要监控的关键词
- **`Add`** 按钮 - 添加关键词
- **关键词列表** - 显示所有关键词，每个都有`×`按钮删除

---

### 翻译设置窗口

**目的：** 配置翻译功能和API

#### **启用翻译**
- **`启用翻译：[ON/OFF]`** - 所有功能的主开关

#### **传入消息部分**
- **18个语言按钮** - 选择传入聊天的目标语言

#### **传出消息部分**
- **18个语言按钮** - 选择您的消息发送前翻译成什么语言

#### **API选择**
- **`○ Lingva（无限）`** - 免费，无每日限制
- **`○ LibreTranslate（无限）`** - 免费，无每日限制
- **`○ MyMemory（1000/天）`** - 免费，每天1000次

#### **显示选项**
- **`显示原始消息：[ON/OFF]`** - 显示原始和翻译或仅翻译
- **`显示检测到的语言：[ON/OFF]`** - 显示检测到哪种语言
- **`自动回退到无限：[ON/OFF]`** - 达到限制时自动切换
- **`翻译显示样式：`**
  - **`内联`** - 在原始消息下方显示翻译
  - **`替换`** - 用翻译替换原始消息

#### **API使用信息**
- **`今日使用：X/Y`** 或 **`∞`** - 显示今天使用的翻译次数
- **`重置计数器`** 按钮 - 手动重置

---

### 视觉指示器

**API状态：**
- **`🌐 ON | API: [名称] | 剩余：X`** - 翻译已启用
- **`🌐 OFF`** - 翻译已禁用

**消息颜色：**
- **白色** - 普通消息
- **蓝色** - 私聊消息（前缀`[W]`）
- **绿色** - 团队聊天消息
- **浅蓝色** - 翻译文本
- **橙色** - 检测到的语言

**按钮状态：**
- **绿色背景** - 功能已ON或已选择
- **灰色背景** - 功能已OFF
- **蓝色背景** - 选定的语言或API

</details>

<details>
<summary><h3>🇷🇺 РУССКИЙ - Нажмите, чтобы развернуть</h3></summary>

### ЭЛЕМЕНТЫ УПРАВЛЕНИЯ ГЛАВНЫМ ОКНОМ

#### **Кнопки в Заголовке**
- **`Log [ON/OFF]`** - Переключает запись сообщений. Когда OFF, сообщения не сохраняются.
- **`Auto↓ [ON/OFF]`** - Управление автопрокруткой. Когда ON, чат прокручивается к новым сообщениям.
- **`A-`** - Уменьшить размер шрифта (минимум 12px)
- **`A+`** - Увеличить размер шрифта (максимум 26px)
- **`_`** (Свернуть) - Сворачивает окно. Нажмите снова для восстановления.
- **`×`** (Закрыть) - Показывает диалог подтверждения перед закрытием.

#### **Полоса Счетчика**
- Отображает: `Lines X/Y (remaining Z) • Rot: N`
  - **Lines X/Y** = Текущие строки / Максимальные строки
  - **Remaining Z** = Сколько еще строк до автосохранения
  - **Rot: N** = Счетчик ротации

#### **Кнопка `Clear`**
- Очищает все текущие сообщения с экрана

#### **Панель Поиска** (При нажатии 🔍)
- **Текстовое поле** - Введите ключевые слова для поиска. Совпадающие сообщения выделяются.
- **Кнопка `Close`** - Закрывает панель поиска

#### **Панель Ввода**
- **Текстовое поле** - Введите свое сообщение. Оно будет переведено перед отправкой.
- **Кнопка `Send`** - Отправляет сообщение в чат (поддерживает шепот `/w имя сообщение`)

#### **Кнопки Нижней Панели**
- **`Filters`** - Открывает окно фильтра пользователей
- **`Save`** - Вручную сохраняет журнал чата
- **`Wrap [ON/OFF]`** - Переключает перенос текста
- **`Time [ON/OFF]`** - Показывает/скрывает временные метки
- **`Colors`** - Открывает окно настройки цветов
- **`⚙`** - Открывает окно расширенных настроек
- **`🔍`** - Открывает/закрывает панель поиска
- **`🌐 [ON/OFF]`** - Включает/выключает автоматический перевод

#### **Контекстное Меню** (Правый клик на сообщении)
- **`Copy line`** - Копирует полное сообщение
- **`Copy original`** - Копирует только оригинальный текст
- **`Copy translation`** - Копирует только переведенный текст
- **`Copy all`** - Копирует всю историю чата

---

### ОКНО ФИЛЬТРОВ

**Назначение:** Контролировать, чьи сообщения появляются в журнале

#### **Кнопки Управления**
- **`Выбрать`** - Выбирает ВСЕХ видимых игроков
- **`Очистить`** - Снимает выбор со ВСЕХ игроков
- **`Auto-Add [ON/OFF]`** - Когда ON, новые игроки автоматически добавляются
- **`Ref`** (Обновить) - Обновляет список игроков

#### **Список Игроков**
- **Флажки** - Нажмите для выбора/отмены выбора игроков
- Показывает: Имя пользователя, Отображаемое имя, UserId

#### **Метка Статуса**
- Показывает: `Selected: X` (количество выбранных игроков)

---

### ОКНО ЧЕРНОГО СПИСКА

**Назначение:** Блокировать сообщения от конкретных пользователей

#### **Раздел Добавления Пользователя**
- **Текстовое поле** - Введите имя пользователя или UserId
- **Кнопка `Add`** - Добавляет пользователя в черный список

#### **Метка Статуса**
- Показывает: `Blocked: X` (количество заблокированных)

---

### ОКНО ЦВЕТОВ

**Назначение:** Настроить цвета для пользователей и темы интерфейса

#### **Раздел Цвета Пользователя**
- **Поле имени пользователя** - Введите имя для раскраски
- **Поля R, G, B** - Введите значения RGB (0-255)
- **6 кнопок предустановок** - Нажмите для быстрого заполнения RGB
- **Кнопка `Apply`** - Применяет цвет к пользователю
- **Кнопка `Recolor`** - Перекрашивает ВСЕ существующие сообщения

#### **Раздел Темы Интерфейса**
- **Первая строка (BG):** Поля R, G, B - Цвет фона
- **Вторая строка (Акцент):** Поля R, G, B - Акцентный цвет
- **6 кнопок предустановок** - Для быстрого применения
- **Кнопка `Apply Theme`** - Применяет тему
- **Кнопка `Close`** - Закрывает окно

---

### ОКНО РАСШИРЕННЫХ НАСТРОЕК

**Назначение:** Настроить поведение логгера

#### **Параметры Отображения**
- **`Показывать Отображаемые Имена: [ON/OFF]`** - Переключение между отображаемыми именами и именами пользователей
- **`Режим Сквозного Клика: [ON/OFF]`** - Позволяет кликать через окно

#### **Селектор Языка UI**
- **`Язык: [EN] [ES] [ZH] [RU] [ID]`** - Пять кнопок для переключения языка интерфейса

#### **Управление Журналом**
- **`Максимальные Строки Журнала:`** - Установка максимальных строк (по умолчанию: 2000)
- **`Автосохранение при (строк):`** - Установка триггера автосохранения (по умолчанию: 300)

#### **Раздел Ключевых Слов**
- **Текстовое поле** - Введите ключевое слово
- **Кнопка `Add`** - Добавляет ключевое слово
- **Список ключевых слов** - Показывает все с кнопкой `×` для удаления

---

### ОКНО НАСТРОЕК ПЕРЕВОДА

**Назначение:** Настроить функции перевода и API

#### **Включить Перевод**
- **`Включить Перевод: [ON/OFF]`** - Главный переключатель

#### **Раздел Входящих Сообщений**
- **18 кнопок языков** - Выберите целевой язык для входящего чата

#### **Раздел Исходящих Сообщений**
- **18 кнопок языков** - Выберите язык для ВАШИХ сообщений

#### **Выбор API**
- **`○ Lingva (Неограниченно)`** - Бесплатно, без лимита
- **`○ LibreTranslate (Неограниченно)`** - Бесплатно, без лимита
- **`○ MyMemory (1000/день)`** - Бесплатно, 1000 запросов в день

#### **Параметры Отображения**
- **`Показывать оригинальное сообщение: [ON/OFF]`** - Показывает оригинал и перевод или только перевод
- **`Показывать определенный язык: [ON/OFF]`** - Отображает определенный язык
- **`Автопереход на неограниченный: [ON/OFF]`** - Автоматически переключается при достижении лимита
- **`Стиль отображения:`**
  - **`Встроенный`** - Показывает перевод под оригиналом
  - **`Замена`** - Заменяет оригинал переводом

#### **Информация об Использовании API**
- **`Использовано сегодня: X/Y`** или **`∞`** - Показывает использованные переводы
- **Кнопка `Сбросить Счетчик`** - Вручную сбрасывает счетчик

---

### ВИЗУАЛЬНЫЕ ИНДИКАТОРЫ

**Статус API:**
- **`🌐 ON | API: [имя] | Осталось: X`** - Перевод включен
- **`🌐 OFF`** - Перевод выключен

**Цвета Сообщений:**
- **Белый** - Обычные сообщения
- **Синий** - Шепот (префикс `[W]`)
- **Зеленый** - Командный чат
- **Светло-синий** - Переведенный текст
- **Оранжевый** - Определенный язык

**Состояния Кнопок:**
- **Зеленый фон** - Функция включена или выбрана
- **Серый фон** - Функция выключена
- **Синий фон** - Выбранный язык или API

</details>

<details>
<summary><h3>🇮🇩 INDONESIA - Klik untuk memperluas</h3></summary>

### KONTROL JENDELA UTAMA

#### **Tombol Bilah Judul**
- **`Log [ON/OFF]`** - Mengaktifkan/menonaktifkan pencatatan pesan. Saat OFF, pesan tidak disimpan.
- **`Auto↓ [ON/OFF]`** - Kontrol scroll otomatis. Saat ON, chat otomatis scroll ke pesan terbaru.
- **`A-`** - Kurangi ukuran font (minimum 12px)
- **`A+`** - Tambah ukuran font (maksimum 26px)
- **`_`** (Minimize) - Minimalkan jendela. Klik lagi untuk mengembalikan.
- **`×`** (Tutup) - Menampilkan dialog konfirmasi sebelum menutup.

#### **Bilah Penghitung**
- Menampilkan: `Lines X/Y (remaining Z) • Rot: N`
  - **Lines X/Y** = Baris saat ini / Baris maksimum
  - **Remaining Z** = Berapa baris lagi sampai auto-save
  - **Rot: N** = Penghitung rotasi

#### **Tombol `Clear`**
- Menghapus semua pesan dari tampilan

#### **Bilah Pencarian** (Ditampilkan saat 🔍 diklik)
- **Kotak teks** - Ketik kata kunci untuk mencari. Pesan yang cocok disorot.
- **Tombol `Close`** - Menutup bilah pencarian

#### **Bilah Input**
- **Kotak teks** - Ketik pesan Anda. Akan diterjemahkan sebelum dikirim.
- **Tombol `Send`** - Mengirim pesan ke chat (mendukung whisper `/w namauser pesan`)

#### **Tombol Bilah Bawah**
- **`Filters`** - Membuka jendela Filter Pengguna
- **`Save`** - Menyimpan log chat secara manual
- **`Wrap [ON/OFF]`** - Mengaktifkan/menonaktifkan pembungkusan teks
- **`Time [ON/OFF]`** - Menampilkan/menyembunyikan timestamp
- **`Colors`** - Membuka jendela Kustomisasi Warna
- **`⚙`** - Membuka jendela Pengaturan Lanjutan
- **`🔍`** - Membuka/menutup bilah pencarian
- **`🌐 [ON/OFF]`** - Mengaktifkan/menonaktifkan terjemahan otomatis

#### **Menu Konteks** (Klik kanan pada pesan)
- **`Copy line`** - Menyalin pesan lengkap
- **`Copy original`** - Menyalin hanya teks asli
- **`Copy translation`** - Menyalin hanya teks terjemahan
- **`Copy all`** - Menyalin semua riwayat chat

---

### JENDELA FILTER

**Tujuan:** Mengontrol pesan pemain mana yang muncul di log

#### **Tombol Kontrol**
- **`Pilih`** - Memilih SEMUA pemain yang terlihat
- **`Hapus`** - Membatalkan pilihan SEMUA pemain
- **`Auto-Add [ON/OFF]`** - Saat ON, pemain baru otomatis ditambahkan
- **`Ref`** (Refresh) - Menyegarkan daftar pemain

#### **Daftar Pemain**
- **Kotak centang** - Klik untuk memilih/membatalkan pilihan pemain
- Menampilkan: Username, Display Name, UserId

#### **Label Status**
- Menampilkan: `Selected: X` (jumlah pemain yang dipilih)

---

### JENDELA BLACKLIST

**Tujuan:** Memblokir pesan dari pengguna tertentu

#### **Bagian Tambah Pengguna**
- **Kotak teks** - Masukkan username atau UserId untuk diblokir
- **Tombol `Add`** - Menambahkan pengguna ke blacklist

#### **Label Status**
- Menampilkan: `Blocked: X` (jumlah pengguna yang diblokir)

---

### JENDELA WARNA

**Tujuan:** Menyesuaikan warna untuk pengguna dan tema antarmuka

#### **Bagian Warna Pengguna**
- **Kotak username** - Masukkan username untuk diwarnai
- **Kotak R, G, B** - Masukkan nilai RGB (0-255)
- **6 tombol warna preset** - Klik untuk mengisi RGB dengan cepat
- **Tombol `Apply`** - Menerapkan warna ke pengguna
- **Tombol `Recolor`** - Mewarnai ulang SEMUA pesan yang ada

#### **Bagian Tema Antarmuka**
- **Baris pertama (BG):** Kotak R, G, B - Warna latar belakang
- **Baris kedua (Accent):** Kotak R, G, B - Warna aksen
- **6 tombol warna preset** - Untuk menerapkan warna dengan cepat
- **Tombol `Apply Theme`** - Menerapkan tema
- **Tombol `Close`** - Menutup jendela

---

### JENDELA PENGATURAN LANJUTAN

**Tujuan:** Mengonfigurasi perilaku logger

#### **Opsi Tampilan**
- **`Tampilkan Display Name: [ON/OFF]`** - Beralih antara Display Name vs. Username
- **`Mode Click-Through: [ON/OFF]`** - Memungkinkan mengklik melalui jendela

#### **Pemilih Bahasa UI**
- **`Bahasa: [EN] [ES] [ZH] [RU] [ID]`** - Lima tombol untuk mengubah bahasa antarmuka

#### **Manajemen Log**
- **`Baris Log Maksimum:`** - Mengatur baris maksimum (default: 2000)
- **`Auto-Save pada (baris):`** - Mengatur trigger auto-save (default: 300)

#### **Bagian Kata Kunci**
- **Kotak teks** - Masukkan kata kunci untuk dipantau
- **Tombol `Add`** - Menambahkan kata kunci
- **Daftar kata kunci** - Menampilkan semua dengan tombol `×` untuk menghapus

---

### JENDELA PENGATURAN TERJEMAHAN

**Tujuan:** Mengonfigurasi fitur terjemahan dan API

#### **Aktifkan Terjemahan**
- **`Aktifkan Terjemahan: [ON/OFF]`** - Sakelar utama untuk semua fitur

#### **Bagian Pesan Masuk**
- **18 tombol bahasa** - Pilih bahasa target untuk chat masuk

#### **Bagian Pesan Keluar**
- **18 tombol bahasa** - Pilih bahasa untuk pesan ANDA

#### **Pemilihan API**
- **`○ Lingva (Unlimited)`** - Gratis, tanpa batas harian
- **`○ LibreTranslate (Unlimited)`** - Gratis, tanpa batas harian
- **`○ MyMemory (1000/hari)`** - Gratis, 1000 permintaan per hari

#### **Opsi Tampilan**
- **`Tampilkan pesan asli: [ON/OFF]`** - Menampilkan asli dan terjemahan atau hanya terjemahan
- **`Tampilkan bahasa terdeteksi: [ON/OFF]`** - Menampilkan bahasa yang terdeteksi
- **`Auto-fallback ke unlimited: [ON/OFF]`** - Beralih otomatis saat batas tercapai
- **`Gaya tampilan:`**
  - **`Inline`** - Menampilkan terjemahan di bawah asli
  - **`Ganti`** - Mengganti asli dengan terjemahan

#### **Info Penggunaan API**
- **`Penggunaan hari ini: X/Y`** atau **`∞`** - Menampilkan terjemahan yang digunakan
- **Tombol `Reset Counter`** - Mereset penghitung secara manual

---

### INDIKATOR VISUAL

**Status API:**
- **`🌐 ON | API: [nama] | Sisa: X`** - Terjemahan aktif
- **`🌐 OFF`** - Terjemahan nonaktif

**Warna Pesan:**
- **Putih** - Pesan normal
- **Biru** - Pesan bisikan (awalan `[W]`)
- **Hijau** - Chat tim
- **Biru Muda** - Teks terjemahan
- **Oranye** - Bahasa terdeteksi

**Status Tombol:**
- **Latar belakang hijau** - Fitur ON atau dipilih
- **Latar belakang abu-abu** - Fitur OFF
- **Latar belakang biru** - Bahasa atau API yang dipilih

</details>

---

## 🔧 Technical Specifications

### System Requirements
- **Platform**: Roblox (any game with chat)
- **Executor**: Compatible with most modern executors
  - Synapse X, Script-Ware, Krnl, Fluxus, etc.
- **File System**: Requires `makefolder`, `writefile`, `readfile`, `listfiles` functions
- **Services Used**: Players, TextChatService, UserInputService, GuiService, ReplicatedStorage, SoundService, HttpService

### Storage Structure
```
workspace/
├── ChatLogs/
│   ├── ChatLog_2026-02-11_15-30-45_Rot0.txt
│   ├── ChatLog_2026-02-11_15-45-12_Rot1.txt
│   └── ...
└── ChatLoggerTranslatorConfig.json
```

### Configuration File
All settings are automatically saved to `ChatLoggerTranslatorConfig.json`:
- Window positions and sizes
- User whitelist and blacklist
- Custom user colors
- Keywords
- Theme colors
- Translation preferences
- API usage statistics

### Performance Metrics
- **Memory Usage**: ~5-10MB (depending on log size)
- **CPU Usage**: <5% on average
- **Translation Cache**: Reduces API calls by ~70%
- **UI Rendering**: Optimized for 60 FPS

### API Integration Details
| API | Daily Limit | Speed | Reliability |
|-----|-------------|-------|-------------|
| Lingva Translate | Unlimited | Fast | High |
| LibreTranslate | Unlimited | Medium | High |
| MyMemory | 1000/day | Fast | Medium |

---

## 🌍 Supported Languages

### Translation Languages (18 Total)
| Language | Code | Flag |
|----------|------|------|
| English | `en` | 🇺🇸 |
| Spanish | `es` | 🇪🇸 |
| Portuguese | `pt` | 🇧🇷 |
| French | `fr` | 🇫🇷 |
| German | `de` | 🇩🇪 |
| Italian | `it` | 🇮🇹 |
| Russian | `ru` | 🇷🇺 |
| Chinese | `zh` | 🇨🇳 |
| Japanese | `ja` | 🇯🇵 |
| Korean | `ko` | 🇰🇷 |
| Arabic | `ar` | 🇸🇦 |
| Hindi | `hi` | 🇮🇳 |
| Turkish | `tr` | 🇹🇷 |
| Polish | `pl` | 🇵🇱 |
| Dutch | `nl` | 🇳🇱 |
| Vietnamese | `vi` | 🇻🇳 |
| Thai | `th` | 🇹🇭 |
| Indonesian | `id` | 🇮🇩 |

### UI Languages (5 Total)
- 🇺🇸 English
- 🇪🇸 Español
- 🇨🇳 中文
- 🇷🇺 Русский
- 🇮🇩 Indonesia

---

## ❓ FAQ

<details>
<summary><b>How do I hide the logger quickly?</b></summary>

Press **Right Control** (the panic key) to instantly hide/show all logger windows.
</details>

<details>
<summary><b>Where are my chat logs saved?</b></summary>

Chat logs are saved in the `ChatLogs/` folder in your executor's workspace directory. Each log file is named with a timestamp and rotation number.
</details>

<details>
<summary><b>Can I use multiple translation APIs?</b></summary>

Yes! You can switch between Lingva, LibreTranslate, and MyMemory at any time. The logger also supports auto-fallback to unlimited APIs when daily limits are reached.
</details>

<details>
<summary><b>How do I translate my own messages?</b></summary>

1. Open Translation Settings (🌐 button)
2. Scroll to "Outgoing Message Language"
3. Select your desired language
4. Type in the input box and click Send - your message will be automatically translated
</details>

<details>
<summary><b>Can I customize colors for specific players?</b></summary>

Yes! Open the Colors window and enter the player's username along with RGB values. You can also recolor all existing messages from that player.
</details>

<details>
<summary><b>What happens when I reach the maximum log lines?</b></summary>

When you reach the maximum (default: 2000 lines), the logger automatically saves the current log to a file and optionally clears the display. This prevents memory overflow.
</details>

<details>
<summary><b>Does this work with all Roblox games?</b></summary>

Yes! The logger supports both legacy and modern chat systems, making it compatible with virtually all Roblox games.
</details>

<details>
<summary><b>How do I filter messages from specific players?</b></summary>

1. Click the "Filters" button
2. Select the players you want to monitor (checkboxes)
3. Only messages from selected players will appear in your log
4. Use "Auto-Add" to automatically include new players joining the server
</details>

---

## 📄 License

MIT License - Feel free to use, modify, and distribute.

---

## 🙏 Credits

**Version**: 1.1  
**Author**: [Your Name]  
**Last Updated**: February 11, 2026

---

<div align="center">

**Enjoying Chat Logger + Translator?**  
⭐ Star this repository to show your support!

</div>

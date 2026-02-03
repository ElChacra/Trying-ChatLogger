# Trying ChatLogger

A full-featured real-time chat logger for Roblox with multi-language support, persistent configuration, and advanced filtering.

---

## 🇬🇧 English

### Features

- **Real-time chat logging** — Captures all chat messages live with toggle on/off control.
- **Auto-scroll** — Automatically scrolls to the latest message. Toggle between auto and manual scroll.
- **Text wrap** — Enable or disable text wrapping for long messages.
- **Timestamps** — Toggle timestamps on/off for each logged message.
- **Font size control** — Adjust font size dynamically with A+ / A− buttons (range: 12–26).
- **Search** — Search through logged messages in real time.
- **Copy** — Right-click context menu to copy a single line or all logged messages to clipboard.
- **Save logs** — Export all logged messages to a text file in the `ChatLogs` folder.
- **Log rotation** — Automatically rotates logs every 1000 lines (configurable). Old logs are cleared silently after rotation.
- **Max lines** — Caps log history at 2000 lines to keep performance stable.

### Filtering

- **User filters** — Select which players' messages to capture. Supports search by name, select all, clear all, and refresh.
- **Add by username or UserId** — Manually add users to the filter list.
- **Blacklist** — Block specific users from being logged. Add or remove users dynamically.

### Appearance

- **Color per user** — Assign custom RGB colors to usernames. Supports color presets and recolor to apply changes to existing messages.
- **Interface theme** — Customize the background and accent colors of the entire UI.
- **Window opacity** — Adjust the transparency of the main chat window using a slider.

### Advanced Settings

- **Click-Through mode** — Makes the window ignore mouse input, letting clicks pass through to the game.
- **Display Names** — Toggle between showing Roblox display names or usernames.
- **Keywords (Alerts)** — Add keywords to trigger alerts when they appear in chat. Manage keywords from the settings panel.
- **Panic key** — Press Right Control to instantly hide/show the logger window.

### Interface

- **Draggable windows** — All windows (main, filters, blacklist, colors, settings) can be dragged freely.
- **Minimizable** — Minimize the main window to a compact bar (220px wide).
- **Confirmation dialog** — A confirm prompt appears before closing the logger.
- **Multi-language** — Full UI support for English, Spanish, Chinese, and Russian.
- **Persistent configuration** — All settings, filters, colors, keywords, and language preference are saved to `ChatLoggerConfig.json` and restored on next launch.

### Configuration (top of script)

| Variable | Default | Description |
|---|---|---|
| `ALLOWED` | `{""}` | Whitelist of usernames/IDs. Empty captures all. |
| `BLACKLIST` | `{}` | Users to ignore. |
| `MAX_LINES` | `2000` | Max logged lines before pruning. |
| `ROTATE_EVERY` | `1000` | Lines before log rotation. |
| `PANIC_KEY` | `RightControl` | Key to toggle visibility. |
| `SAVE_DIR` | `ChatLogs` | Folder for exported logs. |

---

## 🇪🇸 Español

### Características

- **Registro de chat en tiempo real** — Captura todos los mensajes del chat con control de encendido/apagado.
- **Auto-desplazamiento** — Se desplaza automáticamente al último mensaje. Alternar entre auto y manual.
- **Ajuste de texto** — Habilitar o deshabilitar el ajuste de texto para mensajes largos.
- **Marcas de tiempo** — Alternar marcas de tiempo en cada mensaje registrado.
- **Control de tamaño de fuente** — Ajustar el tamaño de fuente dinámicamente con los botones A+ / A− (rango: 12–26).
- **Búsqueda** — Buscar entre los mensajes registrados en tiempo real.
- **Copiar** — Menú contextual con clic derecho para copiar una línea o todos los mensajes al portapapeles.
- **Guardar logs** — Exportar todos los mensajes registrados a un archivo de texto en la carpeta `ChatLogs`.
- **Rotación de logs** — Rota automáticamente los logs cada 1000 líneas (configurable). Los logs antiguos se eliminan silenciosamente tras la rotación.
- **Máximo de líneas** — Limita el historial a 2000 líneas para mantener el rendimiento.

### Filtrado

- **Filtros de usuarios** — Seleccionar qué jugadores capturar. Soporta búsqueda por nombre, seleccionar todos, limpiar todos y refrescar.
- **Agregar por username o UserId** — Agregar usuarios manualmente a la lista de filtros.
- **Lista negra (Blacklist)** — Bloquear usuarios específicos para que no se registren. Agregar o eliminar usuarios dinámicamente.

### Apariencia

- **Color por usuario** — Asignar colores RGB personalizados a los nombres de usuario. Soporta colores predeterminados y recoloreo para aplicar cambios a mensajes existentes.
- **Tema de interfaz** — Personalizar los colores de fondo y acento de toda la interfaz.
- **Opacidad de ventana** — Ajustar la transparencia de la ventana principal con un deslizador.

### Configuración avanzada

- **Modo Click-Through** — La ventana ignora la entrada del ratón, permitiendo que los clics pasen al juego.
- **Display Names** — Alternar entre nombres de visualización de Roblox o nombres de usuario.
- **Palabras clave (Alertas)** — Agregar palabras clave para activar alertas cuando aparezcan en el chat. Administrar palabras clave desde el panel de configuración.
- **Tecla de pánico** — Presionar Control Derecho para ocultar/mostrar la ventana del logger instantáneamente.

### Interfaz

- **Ventanas arrastrables** — Todas las ventanas (principal, filtros, lista negra, colores, configuración) se pueden arrastrar libremente.
- **Minimizable** — Minimizar la ventana principal a una barra compacta (220px de ancho).
- **Diálogo de confirmación** — Aparece un diálogo de confirmación antes de cerrar el logger.
- **Multi-idioma** — Soporte completo de interfaz en inglés, español, chino y ruso.
- **Configuración persistente** — Todas las configuraciones, filtros, colores, palabras clave y preferencia de idioma se guardan en `ChatLoggerConfig.json` y se restauran al próximo inicio.

### Configuración (parte superior del script)

| Variable | Por defecto | Descripción |
|---|---|---|
| `ALLOWED` | `{""}` | Lista blanca de nombres/IDs. Vacío captura todo. |
| `BLACKLIST` | `{}` | Usuarios a ignorar. |
| `MAX_LINES` | `2000` | Máximo de líneas antes de eliminar. |
| `ROTATE_EVERY` | `1000` | Líneas antes de la rotación. |
| `PANIC_KEY` | `RightControl` | Tecla para alternar visibilidad. |
| `SAVE_DIR` | `ChatLogs` | Carpeta para exportar logs. |

---

## 🇨🇳 中文

### 功能

- **实时聊天记录** — 实时捕获所有聊天消息，支持开启/关闭切换。
- **自动滚动** — 自动滚动到最新消息。可在自动和手动滚动之间切换。
- **文本换行** — 启用或禁用长消息的文本换行。
- **时间戳** — 为每条记录的消息切换时间戳的显示。
- **字体大小控制** — 使用 A+ / A− 按钮动态调节字体大小（范围：12–26）。
- **搜索** — 实时搜索已记录的消息。
- **复制** — 右键上下文菜单，可复制单行或所有消息到剪贴板。
- **保存日志** — 将所有记录的消息导出为 `ChatLogs` 文件夹中的文本文件。
- **日志轮转** — 每 1000 行自动进行日志轮转（可配置）。轮转后旧日志将静默清除。
- **最大行数** — 将日志历史限制在 2000 行，以保持性能稳定。

### 过滤

- **用户过滤器** — 选择捕获哪些玩家的消息。支持按名称搜索、全选、全部清除和刷新。
- **按用户名或用户 ID 添加** — 手动将用户添加到过滤列表。
- **黑名单** — 阻止特定用户的消息被记录。可动态添加或删除用户。

### 外观

- **每个用户的颜色** — 为用户名分配自定义 RGB 颜色。支持颜色预设和重新着色以将更改应用到已有消息。
- **界面主题** — 自定义整个界面的背景色和强调色。
- **窗口透明度** — 使用滑块调节主聊天窗口的透明度。

### 高级设置

- **穿透模式 (Click-Through)** — 窗口忽略鼠标输入，允许点击穿透到游戏。
- **显示名称** — 在 Roblox 显示名称和用户名之间切换。
- **关键词（警报）** — 添加关键词，当其出现在聊天中时触发警报。可在设置面板中管理关键词。
- **恐慌键** — 按下右 Ctrl 键可立即显示或隐藏记录器窗口。

### 界面

- **可拖拽窗口** — 所有窗口（主窗口、过滤器、黑名单、颜色、设置）均可自由拖拽。
- **可最小化** — 将主窗口最小化为紧凑条形（宽 220px）。
- **确认对话框** — 在关闭记录器之前会出现确认提示。
- **多语言支持** — 完整的界面支持英文、西班牙语、中文和俄语。
- **持久化配置** — 所有设置、过滤器、颜色、关键词和语言偏好均保存到 `ChatLoggerConfig.json`，并在下次启动时恢复。

### 配置（脚本顶部）

| 变量 | 默认值 | 说明 |
|---|---|---|
| `ALLOWED` | `{""}` | 用户白名单（名称/ID）。为空时捕获所有人。 |
| `BLACKLIST` | `{}` | 需要忽略的用户。 |
| `MAX_LINES` | `2000` | 清理前的最大行数。 |
| `ROTATE_EVERY` | `1000` | 轮转前的行数。 |
| `PANIC_KEY` | `RightControl` | 切换可见性的按键。 |
| `SAVE_DIR` | `ChatLogs` | 导出日志的文件夹。 |

---

## 🇷🇺 Русский

### Функции

- **Записи чата в реальном времени** — Захватывает все сообщения чата с переключателем включения/выключения.
- **Автопрокрутка** — Автоматически прокручивается к последнему сообщению. Переключение между автоматической и ручной прокруткой.
- **Перенос текста** — Включить или выключить перенос текста для длинных сообщений.
- **Временные метки** — Переключение временных меток для каждого записанного сообщения.
- **Управление размером шрифта** — Динамическая настройка размера шрифта с помощью кнопок A+ / A− (диапазон: 12–26).
- **Поиск** — Поиск среди записанных сообщений в реальном времени.
- **Копирование** — Контекстное меню по правому кличку для копирования одной строки или всех сообщений в буферный буфер.
- **Сохранение логов** — Экспорт всех записанных сообщений в текстовый файл в папку `ChatLogs`.
- **Ротация логов** — Автоматическая ротация логов каждые 1000 строк (настраивается). Старые логи тихо удаляются после ротации.
- **Максимальное количество строк** — Ограничение истории логов до 2000 строк для стабильной производительности.

### Фильтрация

- **Фильтры пользователей** — Выбрать, чьи сообщения захватывать. Поддержка поиска по имени, выбрать все, очистить все и обновить.
- **Добавить по имени или UserId** — Вручную добавить пользователей в список фильтров.
- **Чёрный список** — Заблокировать определённых пользователей от записи. Динамическое добавление или удаление пользователей.

### Внешний вид

- **Цвет для каждого пользователя** — Назначить пользовательские RGB-цвета именам пользователей. Поддержка предустановленных цветов и перекраски для применения изменений к существующим сообщениям.
- **Тема интерфейса** — Настройка цветов фона и акцента всего интерфейса.
- **Прозрачность окна** — Настройка прозрачности главного окна чата с помощью ползунка.

### Расширенные настройки

- **Режим Click-Through** — Окно игнорирует ввод мыши, позволяя кликам проходить через окно в игру.
- **Display Names** — Переключение между именами отображения Roblox и именами пользователей.
- **Ключевые слова (Оповещения)** — Добавить ключевые слова для активации оповещений при их появлении в чате. Управление ключевыми словами из панели настроек.
- **Клавиша паники** — Нажать правый Ctrl для мгновенного скрытия/показа окна логгера.

### Интерфейс

- **Перемещаемые окна** — Все окна (главное, фильтры, чёрный список, цвета, настройки) можно свободно перемещать.
- **Сворачивание** — Свернуть главное окно в компактную полоску (ширина 220px).
- **Диалог подтверждения** — Появляется запрос на подтверждение перед закрытием логгера.
- **Многоязычность** — Полная поддержка интерфейса на английском, испанском, китайском и русском языках.
- **Сохранение конфигурации** — Все настройки, фильтры, цвета, ключевые слова и предпочтение языка сохраняются в `ChatLoggerConfig.json` и восстанавливаются при следующем запуске.

### Конфигурация (начало скрипта)

| Переменная | По умолчанию | Описание |
|---|---|---|
| `ALLOWED` | `{""}` | Белый список имён/ID. Пустой захватывает всех. |
| `BLACKLIST` | `{}` | Пользователи для игнорирования. |
| `MAX_LINES` | `2000` | Макс. количество строк перед очисткой. |
| `ROTATE_EVERY` | `1000` | Количество строк перед ротацией. |
| `PANIC_KEY` | `RightControl` | Клавиша для переключения видимости. |
| `SAVE_DIR` | `ChatLogs` | Папка для экспорта логов. |

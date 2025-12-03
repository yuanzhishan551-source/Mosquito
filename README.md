# 🦟 Mosquito Interactive Scene / 蚊子互动场景

一个使用手部追踪技术的交互式网页游戏，玩家可以通过摄像头捕捉手部动作来拍打或喷杀蚊子。

An interactive web game using hand tracking technology where players can swat or spray mosquitoes using their hands captured by the camera.

## 🎮 游戏特性 / Game Features

- **沉浸式开场** - 黑屏开场，蚊子嗡嗡声，然后"睁眼"看到场景
- **手部追踪** - 使用MediaPipe Hands实时追踪双手动作
- **双重消灭方式**:
  - 👏 **拍手杀蚊** - 双手合拍消灭蚊子
  - 💨 **喷雾杀虫** - 拿起杀虫剂喷杀蚊子
- **自动循环** - 消灭所有蚊子后，"闭眼"并自动重启游戏

---

- **Immersive Opening** - Black screen, buzzing sounds, then "eye opening" to reveal the scene
- **Hand Tracking** - Real-time hand tracking using MediaPipe Hands
- **Dual Elimination Methods**:
  - 👏 **Clap to Kill** - Clap hands together to eliminate mosquitoes
  - 💨 **Spray to Kill** - Grab insecticide and spray mosquitoes
- **Auto Loop** - After all mosquitoes are eliminated, "eye closing" and auto restart

## 📋 系统要求 / System Requirements

- 现代浏览器 (Chrome, Edge, Firefox 等)
- 摄像头访问权限
- HTTPS 环境（用于摄像头访问）或本地环境

---

- Modern browser (Chrome, Edge, Firefox, etc.)
- Camera access permission
- HTTPS environment (for camera access) or local environment

## 🚀 如何运行 / How to Run

### 方法1：本地HTTP服务器 / Method 1: Local HTTP Server

使用 Python (推荐):
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

使用 Node.js:
```bash
npx http-server -p 8000
```

使用 PHP:
```bash
php -S localhost:8000
```

然后在浏览器中打开: `http://localhost:8000`

Then open in browser: `http://localhost:8000`

### 方法2：部署到GitHub Pages / Method 2: Deploy to GitHub Pages

1. 确保仓库设置中启用了 GitHub Pages
2. 选择主分支作为源
3. 访问: `https://yuanzhishan551-source.github.io/Mosquito/`

---

1. Enable GitHub Pages in repository settings
2. Select main branch as source
3. Visit: `https://yuanzhishan551-source.github.io/Mosquito/`

## 🎯 游戏玩法 / How to Play

### 开始游戏 / Starting the Game

1. 打开 `index.html` / Open `index.html`
2. 允许摄像头权限 / Allow camera permission
3. 点击"开始游戏"按钮 / Click "Start Game" button
4. 观看开场动画（黑屏 → 嗡嗡声 → 睁眼）/ Watch opening animation (black screen → buzzing → eye opening)

### 控制方式 / Controls

#### 👏 拍手杀蚊 / Clapping to Kill
- 将双手举到摄像头前
- 当蚊子飞到你手掌附近时
- 快速合拍双手！
- 蚊子在拍手点附近会被消灭

---

- Raise both hands in front of camera
- When mosquito flies near your palms
- Clap hands together quickly!
- Mosquitoes near the clap point will be eliminated

#### 💨 喷雾杀虫 / Spraying Insecticide
- 将手移向屏幕右侧的杀虫剂图标
- 靠近时会自动"拿起"杀虫剂
- 对准蚊子"喷射"（手靠近蚊子）
- 喷射范围内的蚊子会被消灭

---

- Move hand towards insecticide icon on right side
- Automatically "pick up" when close
- Aim at mosquitoes and "spray" (move hand near them)
- Mosquitoes within spray range will be eliminated

### 游戏流程 / Game Flow

```
开始 → 黑屏 → 蚊子嗡嗡声 → 睁眼动画 → 游戏进行 → 消灭所有蚊子 → 闭眼动画 → 黑屏 → 自动重启
Start → Black → Buzzing → Eye Opening → Playing → All Killed → Eye Closing → Black → Auto Restart
```

## 🔧 配置参数 / Configuration

在 `index.html` 中修改 `CONFIG` 对象来调整游戏参数:

Modify the `CONFIG` object in `index.html` to adjust game parameters:

```javascript
const CONFIG = {
    mosquitoCount: 8,           // 蚊子数量 / Number of mosquitoes
    mosquitoSpeed: 2,           // 蚊子速度 / Mosquito speed
    clapThreshold: 100,         // 拍手检测距离 / Clap detection distance
    sprayDistance: 150,         // 拿起杀虫剂距离 / Insecticide grab distance
    gameRestartDelay: 2000      // 重启延迟(毫秒) / Restart delay (ms)
};
```

## 🐛 调试信息 / Debug Info

游戏左上角显示实时调试信息:
- 当前游戏状态
- 存活蚊子数量
- 检测到的手数量
- 是否持有杀虫剂

---

Top-left corner shows real-time debug info:
- Current game state
- Number of alive mosquitoes
- Number of detected hands
- Whether holding insecticide

## 📁 文件结构 / File Structure

```
Mosquito/
├── index.html              # 主游戏文件 / Main game file
├── Background.png          # 背景图片 / Background image
├── insecticide.png         # 杀虫剂图片 / Insecticide image
└── README.md              # 说明文档 / Documentation
```

## 🔍 技术栈 / Tech Stack

- **HTML5 Canvas** - 游戏渲染 / Game rendering
- **Web Audio API** - 蚊子嗡嗡声生成 / Buzzing sound generation
- **MediaPipe Hands** - 手部追踪 / Hand tracking
- **JavaScript ES6+** - 游戏逻辑 / Game logic

## ⚠️ 常见问题 / Troubleshooting

### 摄像头无法访问 / Camera Not Accessible
- 确保使用 HTTPS 或 localhost
- 检查浏览器摄像头权限设置
- 尝试其他浏览器

---

- Ensure using HTTPS or localhost
- Check browser camera permission settings
- Try another browser

### 手部检测不准确 / Hand Detection Inaccurate
- 确保光线充足
- 手部清晰可见，无遮挡
- 调整摄像头角度
- 距离摄像头约50cm最佳

---

- Ensure good lighting
- Hands clearly visible, unobstructed
- Adjust camera angle
- ~50cm from camera is optimal

### 页面加载缓慢 / Page Loads Slowly
- MediaPipe库需要从CDN加载
- 首次加载需要下载ML模型
- 网络连接可能影响加载速度

---

- MediaPipe library loads from CDN
- First load requires downloading ML models
- Network connection may affect loading speed

## 🎨 自定义 / Customization

### 更换背景图片 / Change Background
替换 `Background.png`，并更新 `CONFIG` 中的尺寸

Replace `Background.png` and update dimensions in `CONFIG`

### 更换杀虫剂图片 / Change Insecticide
替换 `insecticide.png`，并更新位置和旋转角度

Replace `insecticide.png` and update position and rotation

### 修改蚊子外观 / Modify Mosquito Appearance
在 `render()` 方法中修改蚊子绘制代码

Modify mosquito drawing code in `render()` method

## 📝 许可 / License

MIT License - 自由使用和修改 / Free to use and modify

## 🤝 贡献 / Contributing

欢迎提交 Issue 和 Pull Request！

Issues and Pull Requests are welcome!

---

**享受游戏！ / Enjoy the game! 🦟👏💨**

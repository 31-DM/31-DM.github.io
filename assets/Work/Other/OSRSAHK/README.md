# AutoHotkey-Based UI Automation for Old School RuneScape

## Overview
This repository contains a **proof-of-concept AutoHotkey (AHK) script** that automates a simple in-game task in **Old School RuneScape (OSRS)**. The script uses **pixel-based detection, randomized mouse movements, and input automation** to perform repetitive actions without direct user input.

## Motivation
Many **public botting scripts** for the game were either rendered useless due to updates to the game's anti-botting software or easily identified and flagged for an instant account ban (read more on botting and Runescape in the "Further Reading" section at the bottom of this page), leading me to **write my own simple AutoHotkey script** to explore **UI automation**. While this started as a small experiment, it became my **first hands-on experience with scripting and automation** — reinforcing my interest in **process optimization, workflow automation, and decision-making under constraints**.

This early exposure to **automating repetitive inputs** naturally extended to my professional work in **data analytics, modeling, and visualization**. Whether in **financial modeling, operations strategy, or market analytics**, efficiency is critical. The same principles that applied to **optimizing in-game workflows** — such as **randomized behavior to avoid detection, structured task execution, and automation of repetitive actions** — parallel the logic behind **business process optimization, predictive modeling, and decision automation in consulting and strategy roles**.

This project set the foundation for my interest in **leveraging automation to enhance decision-making and efficiency** — a theme that continues to drive my work today.

---

## Code Implementation
The script primarily automates **fishing movements** by:
1. **Searching for a pixel color** associated with the fishing spot
2. **Moving the mouse randomly within a slight offset** to mimic natural interaction
3. **Clicking the target** and repeating predefined movements

### **Key Code Snippet**
```ahk
PixelSearch, Dx, Dy, 400, 400, 1000, 575, 0x887569, 0, Fast
Random, Dx2, Dx-10, Dx+10
Random, Dy2, Dy-10, Dy+10
MouseMove, Dx2, Dy2, 5
Sleep, 100
Click

This approach avoids **static, repetitive inputs** that could be easily detected, introducing **variability** in execution. By incorporating **pixel-based detection and randomized input offsets**, the script mimics human behavior rather than following a fixed sequence of actions.

The script uses:
- **PixelSearch** to identify key UI elements dynamically based on color values
- **Randomized mouse movements** (`Random, Dx2, Dx-10, Dx+10`) to prevent predictable patterns
- **Automated clicking loops** to efficiently interact with the game environment
- **Hotkeys** for user control (`-` to reload, `\` to exit)

These elements create a **basic yet effective automation tool** that simulates real user interactions while reducing detection risks.

---

## Technical Skills Demonstrated
This project provided a **first exposure to automation and scripting**, demonstrating:

- **Scripting & UI Automation**: Writing **AutoHotkey (AHK)** scripts to automate tasks
- **Pixel-Based Object Detection**: Using **color-based scanning** for dynamic interaction
- **Randomized Event Timing**: Implementing **human-like randomness** in mouse movement
- **Process Automation Concepts**: Understanding input simulation and automated workflows
- **Hotkeys for Control**: Users can pause, reload, or exit the script easily

---

## Future Improvements
If revisited, possible enhancements could include:
- **Machine Learning Integration**: Training a model to detect patterns in **game UI changes**
- **Dynamic Event Handling**: Expanding beyond pixel-based detection to use **OCR (Optical Character Recognition)**
- **Multi-Tasking Support**: Enabling automation for multiple in-game tasks with adjustable parameters

---

## Ethical Considerations
This project was built as a **technical experiment** in **scripting and process automation**. While it served as a fun introduction to AutoHotkey and UI automation, it's important to **respect the rules and policies** of online platforms when applying similar techniques.

---

## Author
**Dev Misra**  
Check out my [portfolio](https://31-dm.github.io/) for more projects on **automation, scripting, and analytics**

## Further Reading
For a deeper look at the **impact of automation and in-game economies**, check out this article:  
📖 [How Runescape Botting Became a Survival Strategy for Venezuelans](https://www.polygon.com/features/2020/5/27/21265613/runescape-is-helping-venezuelans-survive)  

This article explores how automation and gold farming became a **global economic force** within the OSRS community. While this project was a small-scale scripting experiment, it highlights how automation techniques—whether in gaming, business, or finance—can influence markets and decision-making.

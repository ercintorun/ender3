# 🛠️ Heavily Modified Ender 3 Pro Setup

<img src="./x%20axis%20linear%20rail/main.jpg" alt="Ender 3 Pro with X-axis linear rail" width="300"/>

## 🔧 Hardware Modifications

My Ender 3 Pro includes the following upgrades:

- 🧠 **Mainboard**: BTT SKR Mini E3 V2  
- 🍓 **Controller**: Raspberry Pi  
- ➖ **X Axis**: Linear Rail  
- ➖ **Y Axis**: Linear Rods  
- 📐 **Sensor**: ADXL345  
- 📍 **Auto Bed Leveling**: 3DTouch  
- 🔥 **Hotend**: Bambu-style  
- 🌬️ **Part Cooling Fan**: 5015  
- 🌡️ **Hotend Cooling Fan**: 4020  

---

## 📂 Repository Contents

- 📁 Klipper Configuration (SKR Mini E3 V2 + 3DTouch + ADXL345)
- 🖨️ Links to Printed Upgrades
- 🧪 Tuning Print Models
- ⚙️ Cura & PrusaSlicer Start/End G-code Templates

---

## 🔌 Raspberry Pi TTY Rule (Persistent Device Name)

To make your serial devices persist across reboots, copy this file:

📄 [`49-custom.rules`](https://gist.github.com/edro15/1c6cd63894836ed982a7d88bef26e4af)  
➡️ Place into: `/etc/udev/rules.d/`

---

## 🧱 Printed Upgrade Links

### 🔧 Y-Axis Linear Rods

- [Linear Rod/Shaft Upgrade](https://www.printables.com/model/446502-ender-3-v2-x-and-y-linear-rodshaft-upgrade)  
- [Y Rod Holder + Tensioner](https://www.printables.com/model/795701-ender-3-pro-front-y-rod-holder-belt-tensioner)

### ⚙️ Belted Z-Axis

- [Belted Z Conversion](https://github.com/kevinakasam/BeltDrivenEnder3)

### 🏗️ Z-Brace for Belted Z

- [Strong Top + Z-Brace](https://www.printables.com/model/454951-strong-top-for-belt-driven-ender-3-with-z-brace)  
- [Thingiverse Z-Brace #1](https://www.thingiverse.com/thing:4417316/files)  
- [Thingiverse Z-Brace #2](https://www.thingiverse.com/thing:3719799/files)

### ➖ X-Axis Linear Rail

- [X Linear Rail + Sherpa Mini Mount](https://www.printables.com/model/862213-ender-3-pro-x-linear-rail-and-sherpa-mini-mount)

### 💨 Fan Duct Options

- [Mini Me V4 Duct (Standard Nozzle)](https://www.printables.com/model/197957-mini-me-v4-lightweight-ender3-hotend-duct-stock-pa)  
- [Mini Me Remix (Height Adjustable)](https://www.printables.com/model/233046-minime-remix-height-adjustable-4010-5015-part-cool) *(Using this with Bambu hotend)*  
- [Volcano Nozzle Fan Duct](https://www.thingiverse.com/thing:5141104)

### 🧲 BLTouch Mounts

- [BLTouch Mount](https://www.thingiverse.com/thing:3003725)  
- [BLTouch Spacer (2mm/5mm/10mm)](https://www.printables.com/model/106004-bltouch-spacer-2mm5mm-and-10mmoff-brand/files)

### 🔩 X-Belt Tensioners

- [Tensioner A](https://www.thingiverse.com/thing:3319649)  
- [Tensioner B](https://www.thingiverse.com/thing:3455739)  
**Correct Files to Use**:
- `Ender_3_Pro_Tevo_Tornado_2mm_lower_body`
- `ender_3_pro_tevo_tornado_x_tensioner_knob_misterguru`
- `tensioner_slider_solid_screwheadclearance`

### 🛏️ Bed Lock

- [Bed Lock](https://www.printables.com/model/412791-ender-3-pro-v2-s1-ender-5-bed-lock)

---

## 🔧 Calibration Tools

### 🧪 Linear Advance

- [Ellis 3DP Pressure Advance Tool](https://ellis3dp.com/Pressure_Linear_Advance_Tool/)

### 📏 Dimensional Accuracy

- [CaliCross - Dimensional Test](https://www.printables.com/model/546871-calicross-a-handy-tool-for-3d-printer-dimensional-)

### 🔁 Retraction Test

- [Full Retraction Test Model](https://www.printables.com/model/398911-full-retraction-test/)  
  *Tip: Run tests with varied distances and enable “Minimum travel distance for retraction”*

### 📦 Flow Calibration

- [Flow Cube Model](https://www.printables.com/model/81314-flow-calibration-cube/files)  
- [Slic3r Flow Math Docs](https://manual.slic3r.org/advanced/flow-math)

💡 **Pro Tip**:  
Ellis3DP recommends printing multiple mini pieces to assess surface quality. If printing a cube, use fixed-wall thickness instead of relying on slicer-calculated wall/infill.  

**Differences Between Slicers**:
- **Cura**: Assumes rectangular cross-sections  
- **PrusaSlicer/Slic3r**: Uses hemispherical logic (more accurate for single-wall thickness)

🔍 [Cura Flow Explanation (Community)](https://community.ultimaker.com/topic/28492-flow-calculations/?do=findComment&comment=280032)

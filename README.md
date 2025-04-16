# 🛠️ Heavily Modified Ender 3 Pro Setup

<img src="./x%20axis%20linear%20rail/main.jpg" alt="Ender 3 Pro with X-axis linear rail" width="300"/>

---
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
## Example Prints 
- PETG Sample: 
<img src="./sample_prints/1_petg_print_sample.jpeg" alt="Ender 3 Pro with X-axis linear rail" width="300"/>

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
- [Thingiverse Z-Brace #2](https://www.thingiverse.com/thing:3719799/files) *(Use bottom_left and bottom_right from this link)*

### ➖ X-Axis Linear Rail

- [X Linear Rail + Sherpa Mini Mount](https://www.printables.com/model/862213-ender-3-pro-x-linear-rail-and-sherpa-mini-mount)

### 💨 Fan Duct Options

- [Mini Me Remix (Height Adjustable)](https://www.printables.com/model/233046-minime-remix-height-adjustable-4010-5015-part-cool) *(for Bambu hotend)*  
- [Mini Me V4 Duct (Standard Nozzle)](https://www.printables.com/model/197957-mini-me-v4-lightweight-ender3-hotend-duct-stock-pa)  *(for stock hotend)*  
- [Volcano Nozzle Fan Duct](https://www.thingiverse.com/thing:5141104) *(For Volcano hotend)*  

### 🧲 BLTouch Mounts

- [BLTouch Mount](https://www.thingiverse.com/thing:3003725)  
- [BLTouch Spacer (2mm/5mm/10mm)](https://www.printables.com/model/106004-bltouch-spacer-2mm5mm-and-10mmoff-brand/files) *(For Volcano hotend)*

### Sherpa Mini Extruder 
Print the parts out of ASA/ABS or PETG. 

- [Sherpa Mini Extruder STLs](https://github.com/Annex-Engineering/Sherpa_Mini-Extruder/tree/master/STLs)

### 🔩 X-Belt Tensioners

Below tensioners are for standart Ender3 Pro installation, not for the  linear rail on X axis version. 

- [Tensioner A](https://www.thingiverse.com/thing:3319649)  
- [Tensioner B](https://www.thingiverse.com/thing:3455739)  
**Correct Files to Use**:
- `Ender_3_Pro_Tevo_Tornado_2mm_lower_body`
- `ender_3_pro_tevo_tornado_x_tensioner_knob_misterguru`
- `tensioner_slider_solid_screwheadclearance`

### 🛏️ Bed Lock

- [Bed Lock](https://www.printables.com/model/412791-ender-3-pro-v2-s1-ender-5-bed-lock)

### Anti-Vibration Feet 
- [Anti-Vibration Feet](https://www.printables.com/model/385532-ender-3-pro-voron-themed-electronics-enclosure/files)

**Correct Files to Use**:
- foot-tpu
- foot-extension
  
---
## Aliexpress Links

- [PEI Bed](https://tr.aliexpress.com/item/1005004992757753.html?spm=a2g0o.order_list.order_list_main.15.24e73d124N1Evo&gatewayAdapt=glo2tur)
- [Ender3 Hotend Upgrade - Bambu Like ](https://tr.aliexpress.com/item/1005005193902909.html?spm=a2g0o.productlist.main.13.3b09661eFtFmkt&algo_pvid=649baab7-7321-4548-98ae-ea2d289d722a&algo_exp_id=649baab7-7321-4548-98ae-ea2d289d722a-6&pdp_ext_f=%7B%22order%22%3A%22656%22%2C%22eval%22%3A%221%22%7D&pdp_npi=4%40dis%21USD%219.98%213.19%21%21%219.98%213.19%21%40211b441e17443675404547874ef34b%2112000044868129218%21sea%21TR%21830152300%21X&curPageLogUid=zYWaviIoTwKC&utparam-url=scene%3Asearch%7Cquery_from%3A)
- [Nema14 Motor for Sherpa Mini Extruder](https://tr.aliexpress.com/item/1005002997600597.html?spm=a2g0o.order_list.order_list_main.45.5f1b3d121lD8dk&gatewayAdapt=glo2tur)
- [Sherpa Mini Gears and Bearings](https://tr.aliexpress.com/item/1005006023988927.html?spm=a2g0o.productlist.main.19.1cad2z792z79qD&algo_pvid=462e9e1c-9c1d-4aad-b31a-fe2ab84308ec&algo_exp_id=462e9e1c-9c1d-4aad-b31a-fe2ab84308ec-2&pdp_ext_f=%7B%22order%22%3A%22242%22%2C%22eval%22%3A%221%22%7D&pdp_npi=4%40dis%21USD%216.40%213.20%21%21%216.40%213.20%21%40211b629217443683035142490ed6d5%2112000035369881985%21sea%21TR%21830152300%21X&curPageLogUid=Mw4Cltv8V5Tp&utparam-url=scene%3Asearch%7Cquery_from%3A) 
- [Bimetal hotend for standart Extruder](https://tr.aliexpress.com/item/1005002907726643.html?spm=a2g0o.order_list.order_list_main.35.5f1b3d121lD8dk&gatewayAdapt=glo2tur) 
---

## 🔧 Calibration Tools

### 🧪 Linear Advance

- [Ellis 3DP Pressure Advance Tool](https://ellis3dp.com/Pressure_Linear_Advance_Tool/)

### 📏 Dimensional Accuracy

- [CaliCross - Dimensional Test](https://www.printables.com/model/546871-calicross-a-handy-tool-for-3d-printer-dimensional-)

### 🔁 Retraction Test

- [Full Retraction Test Model](https://www.printables.com/model/398911-full-retraction-test/)  
  *Tip: Run tests with varied distances and enable “Minimum travel distance for retraction”*

  <img src="./sample_prints/variable_distance_retraction_test_pla.webp" alt="Ender 3 Pro with X-axis linear rail" width="200"/>

### 📦 Flow Calibration

- [Flow Cube Model](https://www.printables.com/model/81314-flow-calibration-cube/files)  
- [Slic3r Flow Math Docs](https://manual.slic3r.org/advanced/flow-math)

💡 **Pro Tip**:  
Ellis3DP recommends printing multiple mini pieces to assess surface quality. If printing a cube, use fixed-wall thickness instead of relying on slicer-calculated wall/infill.  

**Differences Between Slicers**:
- **Cura**: Assumes rectangular cross-sections  
- **PrusaSlicer/Slic3r**: Uses hemispherical logic (more accurate for single-wall thickness)

🔍 [Cura Flow Explanation (Community)](https://community.ultimaker.com/topic/28492-flow-calculations/?do=findComment&comment=280032)



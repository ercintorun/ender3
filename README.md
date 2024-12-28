# Heavily modified Ender3 Pro Repo 

<img width="300px" src="./x%20axis%20linear%20rail/main.jpg" alt="image_name png" />

## What is on this Repo:
* Klipper configuration (skr mini e3v2 + 3dtouch + adxl345)
* STL for tuning
* Links to printed parts: 

* Cura and PrusaSlicer start-end gcodes. 

## Printed Upgrades' Links: 
* Y Axis Linear Rod:

https://www.printables.com/model/446502-ender-3-v2-x-and-y-linear-rodshaft-upgrade

https://www.printables.com/model/795701-ender-3-pro-front-y-rod-holder-belt-tensioner

* Belted Z

https://github.com/kevinakasam/BeltDrivenEnder3

* X axis Linear Rail:

https://www.printables.com/model/862213-ender-3-pro-x-linear-rail-and-sherpa-mini-mount

* Fan Duct

https://www.thingiverse.com/thing:5141104  (Height Adjustable, for volcano nozzle)

https://www.printables.com/model/197957-mini-me-v4-lightweight-ender3-hotend-duct-stock-pa/files

* BlTouch Mount

https://www.thingiverse.com/thing:3003725 

## Calibration 

### Linear Advance
https://ellis3dp.com/Pressure_Linear_Advance_Tool/

###  Shrinkage & Dimension Test
https://www.printables.com/model/546871-calicross-a-handy-tool-for-3d-printer-dimensional- 

###  Retraction Test:

A retraction test should have different distances, you should be able to check "minimum travel distance for retraction" and also test retraction for long distances.  
https://www.printables.com/model/398911-full-retraction-test/ 

###  Flow Cube
https://www.printables.com/model/81314-flow-calibration-cube/files 

If you have a look at ellis3dp you will see that the right flow calibration method is to print multiple mini pieces and check surface quality. That is the right method, but the closest one (being easier) is to print a cube but with a flow fixed wall thickness (not by printing a cube and configuring outer wall count and infill as %0), this way you requested from the slicer to print you a fixed wall size, it should calculate the thickness. Keep in mind that different slicers have different math behind the scenes: 
* The extrusion width in cura assumes rectangular sections are extruded and I believe is the step between parallel extrusions. 
* Prusa slicer and other slic3r based slicers assume hemispherical sections, which give you more predictable single wall thicknesses. I believe a 0.44mm thick extrusion width in prusaslicer is equivalent to constrained extrusion width of 0.4mm in cura with a 0.2mm layer height.

https://manual.slic3r.org/advanced/flow-math

I'm not sure if a similar document exists detailing how cura does this. https://community.ultimaker.com/topic/28492-flow-calculations/?do=findComment&comment=280032 is a community supplied answer and illustrates this really well 


## My Ender3 Pro have: 
* BTT SKR Mini E3 v2 motherboard
* Linear Rail on X axis
* Linear Rods on Y axis 
* Klipper on a Lg g4 phone
* Adxl 345
* 3dtouch 

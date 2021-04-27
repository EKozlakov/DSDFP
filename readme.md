# VIP - **V**HDL **I**mage **P**rocessing

**Dedicated repository for final project of CPE-487 "Digital System Design.**
Team Members:
- Amein Almoughrabi
- Michael Dasaro
- Eugene Kozlakov

### Project Overview
The goal of our project was to write a VHDL program to our board that would perform basic image processing. This amounted to: 1) reading an image file in binary form written to the logical disk of an SD card; 2) saving what was read to memory on-board the Nexys A7-100T; and 3) outputting what was in memory onto a screen via a VGA cable. We decided that any further changes and processing to our image would be a post-end goal. 
We used valued resources, such as [`GitHub`](https://github.com/EKozlakov/DSDFP) and [`Google Sites`](https://sites.google.com/view/dsdfpgroup10/), to document code and weekly logs of the project.

#### Reading Files
Our first challenge for this project was deciding how to read in the image file so that we could perform our analysis and processing on it. We discovered that, using VHDL, and image *cannot* be read in compressed image filetypes like .png or .jpg. It is only possible to load an image onto an FPGA by converting it into raw binary or hex code, writing it to a .mif (Memory Initialization File). Thus we have decided to focus on reading in image files that have been converted to raw binary. 

**Bitstream vs. SD Card**
We did a lot of research and experimentation on whether to store the image files on a computer running Vivado or on an SD card plugged into the FPGA board. Here's what we found: 
- Storing files on a computer running Vivado
  - Storing the files on the computer would allow us to retreive files using a bitstream, process them, then return them. 
  - Assuming everything works, only a file location is needed to access it, and Vivado will access it. 
  - A downside is that the FPGA board needs to be tethered to a computer to perform the processing, but the upside is that files can quickly be edited and examined on the computer. 
  
- Storing files on an SD card
  - Storing files on an SD card proved to be a far more complicated task. The FPGA doesn't have support for a file system, so the information would have to be written to an unformatted SD card. 
  - The data could theoretically be read directly with the memory address on the SD card. 
  - Unfortunately, the pin assignment for the SD card is complicated and required a proprietary library: ***TODO** link to that library thing*

***TODO** maybe attach image of sd card pinouts*

#### Writing to the Block RAM
Writing to the Block RAM (BRAM) in our project was a difficult challenge that we only began to achieve near the end of the semester. We began our highly-experimental BRAM implementation using the on-board Block Memory Generator available in the Vivado IP Catalog. More specifically we were able to create a Simple Dual Port
  ![Image not found](sdpram.jpg "Simple Dual-Port RAM diagram courtesy of Vivado Block Memory Generator v8.4 LogiCORE IP Prduct Guide")
> `ram_block(to_integer(unsigned(wraddress))) <= data;`

### Problems Encountered 
so many problems help
It all started when VHDL was born
and its parents werent there


### Resources
- [`https://www.fpga4student.com/`](https://www.fpga4student.com/)
- [`https://stackoverflow.com/`](https://stackoverflow.com/)
- [`https://embdev.net/topic/471055`](https://embdev.net/topic/471055)
- [`https://mh-nexus.de/en/hxd/`](https://mh-nexus.de/en/hxd/)


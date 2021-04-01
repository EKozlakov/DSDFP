# **Problems with pins in 'read_image_VHDL.vhd'**

  When attempting to display what 'read\_image\_VHDL.vhd' reads in some of its lines as a "proof of concept," we have encountered an error in which some of the ports declared in the entity of the top level file were not mapped to any pins on the Nexys A7-100T board. We were unsure how to map these ports properly in order to achieve our intended function, and did not want to ignore the warnings shown by Vivado. As a way of solving this, we may now attempt to work on a VHDL file that reads an SD card in order to properly map the unused ports in 'read\_image\_VHDL.' 
  
  The unmapped ports labelled in error, projects files, and other information is shown below. 
  
  Project files:
  - [read_image_VHDL.vhd](https://github.com/EKozlakov/CPE487A-DSD/blob/master/finalProject/read_image_VHDL/read_image_VHDL.srcs/sources_1/new/read_image_VHDL.vhd) 
  - [counter.vhd](https://github.com/EKozlakov/CPE487A-DSD/blob/master/finalProject/read_image_VHDL/read_image_VHDL.srcs/sources_1/new/counter.vhd)
  - [leddec.vhd](https://github.com/EKozlakov/CPE487A-DSD/blob/master/finalProject/read_image_VHDL/read_image_VHDL.srcs/sources_1/new/leddec.vhd)
  - [leddec.xdc (renamed from 'hexcount.xdc')](https://github.com/EKozlakov/CPE487A-DSD/blob/master/finalProject/read_image_VHDL/read_image_VHDL.srcs/constrs_1/new/leddec.xdc)
  
  Ports in error:  
    - data[7:0]
    - q[7:0]
    - raddress[3:0]
    - waddress[3:0]
    - re
    - we
   
   Screenshot of Xilinx Vivado with error messages:
   
  ![alt text](https://github.com/EKozlakov/CPE487A-DSD/blob/master/finalProject/read_image_VHDL/pinPlanningErrors2.jpg)
  
  ![alt text](https://github.com/EKozlakov/CPE487A-DSD/blob/master/finalProject/read_image_VHDL/pinPlanningErrors1.jpg)
  
  **Note:** _The read\_image\_VHDL.vhd file currently contains several sub files consisting of constaint files 'leddec.xdc' (named mistakenly because it contains 'hexcount.xdc' code), 'counter.vhd,' and 'leddec.vhd.'_
  
  

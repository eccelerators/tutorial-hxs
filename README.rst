==================================================================================
Comprehensive Tutorial to HxS: The Tool for Designing Hardware/Software Interfaces
==================================================================================

Foreword
--------

In the mid-1980s, components and their hardware/software interfaces were designed and detailed by chip vendors in data books. 
For instance, the Intel interrupt controller 8259 chip, which could be attached to an 8086 CPU chip, is one such example.

Due to the scarcity of hardware resources, optimization was concentrated on a compact hardware design, which unfortunately 
imposed a high level of complexity on the software design due to tight coupling. 
During this period, software was typically written in macro assembly language. 

In 1986, the introduction of ASIC technology enabled a select group of 'ordinary' designers to create custom chips 
and design their hardware/software interfaces.
Fortunately, I was among those individuals and had the opportunity to design a chip interfacing to a 8051 microcontroller for a telecom public switch.
The hardware/software interface was described using a proprietary editor on a BS2000 mainframe, detailing the register map, bit fields, and bit assignments.

In the late 1980s, VHDL, the first hardware description language, replaced schematic entry, and C replaced assembly language for software design.
The hardware/software interface continued to be described prose-like in a document by the hardware designers, which was then manually 
translated into VHDL by the hardware designers and to C by the software designers preferable renaming everything to their liking. 
There was a canyon between the two worlds. The hardware designers struggled to understand the software designers and vice versa.

Over time, both VHDL and C have undergone significant evolution. VHDL has matured, offering a more sophisticated approach to hardware description. Concurrently, 
C has evolved into C++, enabling more advanced software development. Simultaneously, hardware technology has witnessed an exponential boom, marked by a staggering 
ten-thousand-fold escalation in complexity and a hundredfold acceleration in speed. 

Remarkably, with the advent of FPGAs, this advanced technology has become both accessible and affordable for **everybody** in the majority of industrialized nations.
Multi-core CPUs, GPUs, and FPGAs have become the norm. 
However, the way we describe hardware/software 
interfaces has not seen the same level of evolution.


HxS, unlike other tools, uniquely **designs** hardware/software interfaces rather than merely *describing* them.

*Heinrich Diebel*


History
-------

Launched in 2009 by a dedicated developer community, HxS utilized XML, guided by an XSD schema, 
to capture user ideas, and employed XSLT transformations 
to produce outputs for target domains such as VHDL, C, and WORD.

Until 2011, HxS powered several hundred IP designs and has been continuously developed, 
enhanced, and validated in response to real-time developer needs.
HxS dramatically reduced the development effort by over 30% and accelerated time to market, 
thanks to improved quality and robust adaptability to requirement changes.

In the middle of 2011, the introduction of Xtext 2.0 by the Eclipse Foundation, Itemis AG, and TypeFox 
marked a significant turning point for the HxS user frontend. 
The possibilty to define a textual syntax for HxS in Xtext 2.0 and to generate an Eclipse-based editor for it, 
opened up new unbelievable possibilities for the HxS community. 
The HxS community decided to develop a new textual frontend for HxS based on Xtext 2.0. 
This became the sole interface from the end of 2011 onwards, improving the user experience and 
the overall usability of the tool significantly.

Until 2022, HxS powered several thousand designs needing very little maintenance and support. 
Apart from its primary use case of generating VHDL, HxS was also surprisingly used to describe 
hardware/software interfaces of existing components, such as CPU vendor chipsets or I2C temperature sensors. 
The sole purpose of obtaining header files for C software development, using the component in a simulation testbench, 
or for real Python hardware target test setups, was sufficient justification.

By the end of 2021, the HxS community decided to commercialize the tool, making it available to a wider audience. 
This was achieved by leveraging the full capabilities of Xtext, 
including support for the Language Server Protocol (LSP), and integrating direct code generation with Xtend, 
replacing the previous method of using XSLT transformations in a post-processing step.

HxS can now be provided not only as an Eclipse plugin, but also for VsCode and other IDEs. The language's syntax was optimized, 
and namespace support was added to facilitate library design. Furthermore, 
inheritance was introduced, enabling the modification and reuse of library elements without the need for duplication. 

This once again significantly reduced the development effort, bringing the total reduction to 60%, while enhancing 
excellent adaptability to requirement changes.

Since mid of 2022, HxS is adult and has been used by new customers and the developer community itself in many 
commercial projects very successfully.


Introduction
------------

The introduction to HxS is based on example projects. The examples start with simple use cases and evolve into 
more complex ones.

The applied capabilities of HxS expand accordingly and are described in detail during their first application in an example. 
Additionally, general tips on good design of HW/SW interfaces and good HxS design practices, such as naming objects, are provided. 
All examples produce a finished IP for Xilinx and Altera FPGAs with AXI or Avalon bus connection. 
These can be integrated and tested in base projects for evaluation boards of the respective manufacturers.

The base projects are available on eccelerators' GitHub: https://github.com/eccelerators/tutorial-arty-z7 
or https://github.com/eccelerators/tutorial-ep4ce30 repositories.


 
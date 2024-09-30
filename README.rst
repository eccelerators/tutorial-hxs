==================================================================================
Comprehensive Tutorial to HxS: The Tool for Designing Hardware/Software Interfaces
==================================================================================

Foreword
--------

HxS, unlike other tools, uniquely **designs** hardware/software interfaces rather than merely *describing* them.


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

HxS can now be provided not only as an Eclipse plugin, but also for VsCode and other IDEs. The language's keywords were optimized, 
and namespace support was added to facilitate library design. Furthermore, 
inheritance was introduced, enabling the modification and reuse of library elements without the need for duplication. 

This once again significantly reduced the development effort, bringing the total reduction to 60%, while enhancing 
excellent adaptability to requirement changes.

Since mid of 2022, HxS is adult and has been used by new customers and the developer community itself in many 
commercial projects very successfully.
#!/bin/bash

../build/bin/anaroute --tech_lef ../mockPDK/mock.lef \
           --tech_file ../mockPDK/mock.techfile \
           --design_file ../mockPDK/mock.netlist \
           --placement_layout ../mockPDK/CTDSM_TOP.place.gds \
           --iopin ../mockPDK/CTDSM_TOP.iopin \
           --out mock.route.gds

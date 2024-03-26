#!/bin/bash

./anaroute --tech_lef ../mockPDK/mock.lef \
           --tech_file ../mockPDK/mock.techfile \
           --design_file ../mockPDK/CTDSM_TOP.sp \
           --placement_layout ../mockPDK/CTDSM_TOP.place.gds \
           --out mock.route.gds

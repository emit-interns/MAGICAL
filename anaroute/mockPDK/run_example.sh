#!/bin/bash

../build/bin/anaroute --tech_lef mock.lef \
           --tech_file mock.techfile \
           --design_file CTDSM_TOP.sp \
           --placement_layout CTDSM_TOP.place.gds \
           --out mock.route.gds

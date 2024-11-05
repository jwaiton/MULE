#!/bin/bash

(sleep 3s && echo "W" && sleep 3s && echo "s" && sleep 60s && echo "s" && sleep 3s && echo "q") | wavedump ../Configs/WaveDumpConfig_1730B_TPB.txt

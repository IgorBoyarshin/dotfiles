#!/usr/bin/zsh

pacmd set-default-sink $(echo $(~/scripts/audio/get_preferred_sink_number.zsh) | tee ~/scripts/variables/selected_output_sink_number)
pacmd set-default-source $(echo $(~/scripts/audio/get_preferred_source_number.zsh) | tee ~/scripts/variables/selected_input_source_number)
~/scripts/audio/volume.zsh

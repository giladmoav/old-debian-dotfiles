#! /bin/python3

import os
import random

bg_name = "/games/wallpapers/"+str(random.randrange(1,304)).zfill(4)+".jpg"

with open('/home/gilad/.config/nitrogen/bg-saved.cfg','wt') as f:
    f.write(
                f"""
                [xin_0]
                file={bg_name}
                mode=5
                bgcolor=#000000
                
                [xin_1]
                file={bg_name}
                mode=5
                bgcolor=#000000
                """
            )

os.system("nitrogen --restore")

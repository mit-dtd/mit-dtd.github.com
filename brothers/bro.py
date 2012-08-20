#Really shitty script I wrote to turn bro.txt into json

import json
keys = ['Hometown:', 'Course:', 'Year:', "Interests:", "Aspirations:"]

with open('bro.txt') as bro_file:
    bro = {}
    out = []
    for i, line in enumerate(bro_file):
        spot = i % 7
        line = line.strip()
        
        if spot == 0:
            bro = {}
            bro['name'] = line
        elif spot == 1:
            bro['hometown'] = line.split(':')[1]
        elif spot == 2:
            bro['course'] = line.split(':')[1]
        elif spot == 3:
            bro['year'] = line.split(':')[1]
        elif spot == 4:
            bro['interests'] = line.split(':')[1]
        elif spot == 5:
            bro['aspirations'] = line.split(':')[1]
            out.append(bro)
        

print json.dumps(out)
        
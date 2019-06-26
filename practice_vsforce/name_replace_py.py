import re, fileinput

output = []

with open('ADH_MDS_copy.page', 'r') as in_file:
    for line in in_file:
        output.append(re.sub(r'rendered=\".*\"', 'rendered=\"true\"', re.sub(r'\>\{\!.*\}\<', '>Z<', line)))

with open('ADH_MDS_replaceX.page.out', 'w') as out_file:
    for line in output:
        out_file.write(line)
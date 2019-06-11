"""
Scrape links from nes_b.html and then run the wget command to get images
"""
# %% imports
import requests
import re

# %% regular old file io
all_links = []
with open("html/nes_b.html") as f:
    for line in f:
        if "<li><a href=" == line[:12]:
            # print(re.findall(r'(?:").*?(?=")', line))
            # lst = re.findall(r'"([^"]*)"', line)
            stuff = line.split('"')
            if (len(stuff) > 2):
                link = stuff[1]
                # print(link)
                if "http://" in link:
                    all_links.append(link)
                else:
                    print("No link for ", line)
            # break

# %% write links to file
with open("sites.txt", 'w') as f:
    # for l in links:
    f.write("\n".join(all_links))


#%%

# DCGAN to make 8 bit pixel art
> from this amazing Medium article by Adam Geitgey - [Machine Learning is Fun Part 7: Abusing Generative Adverserial Networks to Make 8-bit Pixel Art](https://medium.com/@ageitgey/abusing-generative-adversarial-networks-to-make-8-bit-pixel-art-e45d9b96cee7)

For downloading images from specific sites, this wget command works
```bash
wget -nd -r -A jpeg,jpg,bmp,gif,png -l 1 -e robots=off -P images/ http://www.vgmuseum.com/images/nes/01/zombienation.html
```

# Create dataset of NES games

## Step 1
Run wget command to download html pages
```
mkdir html;
wget -nd -E -H -k -p -P html/ -e robots=off http://www.vgmuseum.com/nes.htm
```

## Step 2 - Make `sites.txt` file
run python program
```bash
python scrape_links.py
```

## Step 3 - Run `scraper.sh`
```
mkdir images
./scraper.sh
```

# Dependencies / Prerequisites

- Python3
- tensorflow==0.12.1
- scipy==0.19.0
- pillow
- (optional) moviepy

# References

- [Machine Learning is Fun Part 7: Abusing Generative Adverserial Networks to Make 8-bit Pixel Art](https://medium.com/@ageitgey/abusing-generative-adversarial-networks-to-make-8-bit-pixel-art-e45d9b96cee7)
- [DCGAN-tensorflow](https://github.com/carpedm20/DCGAN-tensorflow)
- [DCGAN paper](http://arxiv.org/abs/1511.06434)

# Pip freeze for reference 
## `pip freeze`
- all packages in my environment (includes dependencies of above packages):
```bash
attrs==19.1.0
backcall==0.1.0
bleach==3.1.0
certifi==2019.3.9
chardet==3.0.4
decorator==4.4.0
defusedxml==0.6.0
entrypoints==0.3
idna==2.8
imageio==2.5.0
imageio-ffmpeg==0.3.0
ipykernel==5.1.1
ipython==7.5.0
ipython-genutils==0.2.0
ipywidgets==7.4.2
jedi==0.13.3
Jinja2==2.10.1
jsonschema==3.0.1
jupyter==1.0.0
jupyter-client==5.2.4
jupyter-console==6.0.0
jupyter-core==4.4.0
MarkupSafe==1.1.1
mistune==0.8.4
moviepy==1.0.0
nbconvert==5.5.0
nbformat==4.4.0
notebook==5.7.8
numpy==1.16.4
pandocfilters==1.4.2
parso==0.4.0
pexpect==4.7.0
pickleshare==0.7.5
Pillow==6.0.0
proglog==0.1.9
prometheus-client==0.7.0
prompt-toolkit==2.0.9
protobuf==3.8.0
ptyprocess==0.6.0
Pygments==2.4.2
pyrsistent==0.15.2
python-dateutil==2.8.0
pyzmq==18.0.1
qtconsole==4.5.1
requests==2.22.0
scipy==0.19.0
Send2Trash==1.5.0
six==1.12.0
tensorflow==0.12.1
tensorflow-gpu==0.12.1
terminado==0.8.2
testpath==0.4.2
tornado==6.0.2
tqdm==4.32.1
traitlets==4.3.2
urllib3==1.25.3
wcwidth==0.1.7
webencodings==0.5.1
widgetsnbextension==3.4.2
```


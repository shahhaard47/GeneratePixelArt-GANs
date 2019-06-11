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
- scipy
- pillow
- (optional) moviepy

## `pip freeze`
- all packages in my environment (includes dependencies of above packages):
```bash
certifi==2019.3.9
chardet==3.0.4
decorator==4.4.0
idna==2.8
imageio==2.5.0
imageio-ffmpeg==0.3.0
moviepy==1.0.0
numpy==1.16.4
Pillow==6.0.0
proglog==0.1.9
protobuf==3.8.0
requests==2.22.0
scipy==1.3.0
six==1.12.0
tensorflow==0.12.1
tqdm==4.32.1
urllib3==1.25.3
```

# References

- [Machine Learning is Fun Part 7: Abusing Generative Adverserial Networks to Make 8-bit Pixel Art](https://medium.com/@ageitgey/abusing-generative-adversarial-networks-to-make-8-bit-pixel-art-e45d9b96cee7)
- [DCGAN-tensorflow](https://github.com/carpedm20/DCGAN-tensorflow)
- [DCGAN paper](http://arxiv.org/abs/1511.06434)

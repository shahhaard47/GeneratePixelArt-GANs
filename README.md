# DCGAN to make 8 bit pixel art
> from this amazing Medium article by Adam Geitgey - [Machine Learning is Fun Part 7: Abusing Generative Adverserial Networks to Make 8-bit Pixel Art](https://medium.com/@ageitgey/abusing-generative-adversarial-networks-to-make-8-bit-pixel-art-e45d9b96cee7)

For downloading images from specific sites, this wget command works
```bash
wget -nd -r -A jpeg,jpg,bmp,gif,png -l 1 -e robots=off -P images/ http://www.vgmuseum.com/images/nes/01/zombienation.html
```

# DONE

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
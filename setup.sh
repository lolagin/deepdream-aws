set -e

# Disable camera, we don't have any:
sudo ln /dev/null /dev/raw1394

git clone git@github.com:lolagin/deepdream-aws.git
cd deepdream-aws
ln -s ~/caffe .
# Get the googlenet model file:
wget http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel
mv bvlc_googlenet.caffemodel caffe/models/bvlc_googlenet/

# Get some input image:

wget --output-document=lols.png http://i.imgur.com/p7sKba6.jpg
convert lols.png lols.jpg

# Run:
# nohup bash layers.sh lols.jpg &

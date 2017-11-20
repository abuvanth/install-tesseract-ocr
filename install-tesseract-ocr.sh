sudo apt-get install g++ -y
sudo apt-get install autoconf automake libtool -y
sudo apt-get install autoconf-archive -y
sudo apt-get install pkg-config -y
sudo apt-get install libpng12-dev -y
sudo apt-get install libjpeg8-dev -y
sudo apt-get install libtiff5-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install libicu-dev -y
sudo apt-get install libpango1.0-dev -y
sudo apt-get install libcairo2-dev -y
git clone https://github.com/DanBloomberg/leptonica.git
cd leptonica && ./configure && make && sudo make install
git clone https://github.com/tesseract-ocr/tesseract.git
cd tesseract && ./autogen.sh && ./configure && make && sudo make install && sudo ldconfig && make training && sudo make training-install
wget https://github.com/tesseract-ocr/tessdata/raw/master/tam.traineddata
wget https://github.com/tesseract-ocr/tessdata/raw/master/eng.traineddata
sudo mv tam.traineddata /usr/local/share/
sudo mv eng.traineddata /usr/local/share/
sudo pip install pyocr
echo "tesseract-ocr installed successfully"

#!/bin/bash
# Downloads and prepares OpenCV 3.1.0

OUTFILE=opencv-3.1.0.tar.xz

git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git

(cd opencv; git checkout 3.1.0)
(cd opencv_contrib; git checkout 3.1.0)

tar cJf $OUTFILE --exclude '.git*' opencv opencv_contrib && \
	echo "Created $OUTFILE."

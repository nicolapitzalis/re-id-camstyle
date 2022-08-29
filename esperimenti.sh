# init
# git clone https://github.com/nicolapitzalis/re-id-camstyle.git  '/content/camstyle'
# pip install -r camstyle/CycleGAN-for-CamStyle/requirements.txt

# setting up folders
mkdir camstyle/data/market/all_imgs
cp -a camstyle/data/market/bounding_box_test/. camstyle/data/market/all_imgs/
rm -rf camstyle/data/market/bounding_box_test/
mkdir camstyle/data/market/bounding_box_test

# copying images and running tests
# test1 -> c1|c2|c3|c4
find camstyle/data/market/all_imgs/. -name '*c1*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c2*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c3*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c4*' -exec cp {} camstyle/data/market/bounding_box_test/ \;

python camstyle/main.py -d market --logs-dir logs/market-ide --evaluate --resume camstyle/logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf camstyle/data/market/bounding_box_test/
mkdir camstyle/data/market/bounding_box_test

# test2 -> c1|c2|c3|c5
find camstyle/data/market/all_imgs/. -name '*c1*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c2*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c3*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c5*' -exec cp {} camstyle/data/market/bounding_box_test/ \;

python camstyle/main.py -d market --logs-dir logs/market-ide --evaluate --resume camstyle/logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf camstyle/data/market/bounding_box_test/
mkdir camstyle/data/market/bounding_box_test

# test3 -> c2|c3|c4|c5
find camstyle/data/market/all_imgs/. -name '*c2*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c3*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c4*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c5*' -exec cp {} camstyle/data/market/bounding_box_test/ \;

python camstyle/main.py -d market --logs-dir logs/market-ide --evaluate --resume camstyle/logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf camstyle/data/market/bounding_box_test/
mkdir camstyle/data/market/bounding_box_test

# test4 -> c1|c3|c4|c5
find camstyle/data/market/all_imgs/. -name '*c1*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c3*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c4*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c5*' -exec cp {} camstyle/data/market/bounding_box_test/ \;

python camstyle/main.py -d market --logs-dir logs/market-ide --evaluate --resume camstyle/logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf camstyle/data/market/bounding_box_test/
mkdir camstyle/data/market/bounding_box_test

# test5 -> c1|c2|c4|c5
find camstyle/data/market/all_imgs/. -name '*c1*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c2*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c4*' -exec cp {} camstyle/data/market/bounding_box_test/ \;
find camstyle/data/market/all_imgs/. -name '*c5*' -exec cp {} camstyle/data/market/bounding_box_test/ \;

python camstyle/main.py -d market --logs-dir logs/market-ide --evaluate --resume camstyle/logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf camstyle/data/market/bounding_box_test/
mkdir camstyle/data/market/bounding_box_test
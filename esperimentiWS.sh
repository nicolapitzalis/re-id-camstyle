# init
#git clone https://github.com/nicolapitzalis/re-id-camstyle.git  '/content/camstyle'
#pip install -r CycleGAN-for-requirements.txt

# setting up folders
mkdir data/market/all_imgs
cp -a data/market/bounding_box_test/. data/market/all_imgs/
rm -rf data/market/bounding_box_test/
mkdir data/market/bounding_box_test

# copying images and running tests
# test1 -> c1|c2|c3|c4
find data/market/all_imgs/. -name '*c1*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c2*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c3*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c4*' -exec cp {} data/market/bounding_box_test/ \;

python main.py -d market --logs-dir logs/market-ide --evaluate --resume logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf data/market/bounding_box_test/
mkdir data/market/bounding_box_test

# test2 -> c1|c2|c3|c5
find data/market/all_imgs/. -name '*c1*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c2*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c3*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c5*' -exec cp {} data/market/bounding_box_test/ \;

python main.py -d market --logs-dir logs/market-ide --evaluate --resume logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf data/market/bounding_box_test/
mkdir data/market/bounding_box_test

# test3 -> c2|c3|c4|c5
find data/market/all_imgs/. -name '*c2*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c3*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c4*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c5*' -exec cp {} data/market/bounding_box_test/ \;

python main.py -d market --logs-dir logs/market-ide --evaluate --resume logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf data/market/bounding_box_test/
mkdir data/market/bounding_box_test

# test4 -> c1|c3|c4|c5
find data/market/all_imgs/. -name '*c1*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c3*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c4*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c5*' -exec cp {} data/market/bounding_box_test/ \;

python main.py -d market --logs-dir logs/market-ide --evaluate --resume logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf data/market/bounding_box_test/
mkdir data/market/bounding_box_test

# test5 -> c1|c2|c4|c5
find data/market/all_imgs/. -name '*c1*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c2*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c4*' -exec cp {} data/market/bounding_box_test/ \;
find data/market/all_imgs/. -name '*c5*' -exec cp {} data/market/bounding_box_test/ \;

python main.py -d market --logs-dir logs/market-ide --evaluate --resume logs/market-ide/checkpoint.pth.tar

#folder reset
rm -rf data/market/bounding_box_test/
mkdir data/market/bounding_box_test
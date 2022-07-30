import os
import glob
import csv

ROOT_DIR = os.path.relpath(os.path.join(os.path.dirname(__file__), '..'))

test_labels = os.path.join(ROOT_DIR, 'test_labels.csv')
train_labels = os.path.join(ROOT_DIR, 'train_labels.csv')
train_folder = os.path.join(ROOT_DIR, 'CamStyle/data/market/bounding_box_train')
test_folder = os.path.join(ROOT_DIR, 'CamStyle/data/market/bounding_box_test')

train_imgs = glob.glob(os.path.join(train_folder, "*.jpg"))
test_imgs = glob.glob(os.path.join(test_folder, "*.jpg"))

tl = list()
imgs = set()
bb_imgs = list()
bb_infos = list()
with open(train_labels, 'r') as f:
    reader = csv.reader(f)
    for row in reader:
        tl.append((row[0], row[4]))

with open(test_labels, 'r') as f:
    reader = csv.reader(f)
    for row in reader:
        tl.append((row[0], row[4]))

for img in test_imgs:
    filename = '_'.join(img.split('/')[-1].split('_')[0:2]) + '.jpg'
    imgs.add(filename)

for img in imgs:
    filename = img.split('.jpg')[0]
    bb_img = glob.glob(os.path.join(test_folder, "{}*.jpg".format(filename)))
    bb_info = [bb for bb in tl if filename in bb[0]]
    bb_img.sort()
    bb_info.sort()
    bb_imgs.append(bb_img)
    bb_infos.append(bb_info)

for i, bb_img in enumerate(bb_imgs):
    for j, bimg in enumerate(bb_img):
        filename = bimg.split('/')[-1]
        rename = '{}_{}'.format(bb_infos[i][j][1], filename)
        rename_path = os.path.join(test_folder, rename)
        os.rename(bimg, rename_path)
        print(bimg, rename_path)


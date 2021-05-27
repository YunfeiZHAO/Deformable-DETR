import os
import json
import cv2
import random
import re
from bs4 import BeautifulSoup as bs
from shutil import copyfile
from tqdm import tqdm

from pathlib import Path

from abc import ABCMeta, abstractmethod

Path("../coco_df_detr/data").mkdir(parents=True, exist_ok=True)


bashCommand = "mkdir ../coco_df_detr\n" \
              "echo 2"
os.system(bashCommand)


if __name__ == '__main__':
    pass
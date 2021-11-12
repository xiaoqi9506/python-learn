import paddlehub as hub
import numpy as np
from PIL import Image
import io

# 加载移动端预训练模型
# ocr = hub.Module(name="chinese_ocr_db_crnn_mobile")
# 服务端可以加载大模型，效果更好
ocr = hub.Module(name="chinese_ocr_db_crnn_server")


def identify_image(file):
    img = file.read()
    np_images = [np.array(Image.open(io.BytesIO(img)))]

    results = ocr.recognize_text(
        images=np_images,  # 图片数据，ndarray.shape 为 [H, W, C]，BGR格式；
        use_gpu=False,  # 是否使用 GPU；若使用GPU，请先设置CUDA_VISIBLE_DEVICES环境变量
        output_dir='ocr_result',  # 图片的保存路径，默认设为 ocr_result；
        visualization=False,  # 是否将识别结果保存为图片文件；
        box_thresh=0.5,  # 检测文本框置信度的阈值；
        text_thresh=0.5)  # 识别中文文本置信度的阈值；
    text_list = []
    for result in results:
        data = result['data']
        for information in data:
            text_list.append(information['text'])
    return text_list

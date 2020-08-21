import os
import face_recognition


# 已知人脸数据集图片路径
KNOW_IMAGE_PATH = 'ai/image'

ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg', 'gif'}

# 文件校验
def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


# 加载人脸字典数据
def load_face_dic():
    face_image_list = []
    for f in os.listdir(KNOW_IMAGE_PATH):
        if f and allowed_file(f):
            know_image_file = face_recognition.load_image_file(KNOW_IMAGE_PATH + '/' + f)
            face_image_list.append(face_recognition.face_encodings(know_image_file)[0])
import os
import face_recognition
from flask import Flask, jsonify, request, redirect
import know_data

# You can change this to any folder on your system
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg', 'gif'}

FACE_IMAGE_LIST = []

app = Flask(__name__)


@app.route('/check', methods=['GET', 'POST'])
def upload_image():
    if request.method == 'POST':
        if 'file' not in request.files:
            return redirect(request.url)

        file = request.files['file']

        if file.filename == '':
            return redirect(request.url)

        if file and know_data.allowed_file(file.filename):
            return detect_faces_in_image(file)

    return '''
    <!doctype html>
    <title>Is this a picture of Obama?</title>
    <h1>Upload a picture and see if it's a picture of Obama!</h1>
    <form method="POST" enctype="multipart/form-data">
      <input type="file" name="file">
      <input type="submit" value="Upload">
    </form>
    '''


def detect_faces_in_image(file_stream):
    if len(FACE_IMAGE_LIST) <= 0:
        result = {
            "found": False
        }
        return jsonify(result)

    img = face_recognition.load_image_file(file_stream)
    unknown_face_encodings = face_recognition.face_encodings(img)

    face_found = False

    if len(unknown_face_encodings) > 0:
        # 扫描字典数据，查看是否有该人
        match_results = face_recognition.compare_faces(FACE_IMAGE_LIST, unknown_face_encodings[0])
        if match_results[0]:
            face_found = True

    result = {
        "found": face_found,
    }
    return jsonify(result)


if __name__ == "__main__":
    know_data.load_face_dic()
    app.run(host='0.0.0.0', port=6000, debug=True)

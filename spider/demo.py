import requests
from bs4 import BeautifulSoup
import xlwt

baseUrl = 'https://movie.douban.com/top250'


def GetHtml(url):
    try:
        res = requests.get(url, headers={
                           'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit'})
        if res.status_code == 200:
            return res.text
    except requests.RequestException:
        return None


def extract(html):
    soup = BeautifulSoup(html, 'html')
    list = soup.find(class_='grid_view').find_all('li')
    data = []
    for item in list:
        try:
            item_name = item.find(class_='title').string
            item_img = item.find('a').find('img').get('src')
            item_index = item.find(class_='').string
            item_score = item.find(class_='rating_num').string
            item_author = item.find('p').text
            if item.find(class_='inq'):
                item_intr = item.find(class_='inq').string
            else:
                item_intr = ''

            data.append({
                "item_name": item_name,
                "item_img": item_img,
                "item_index": item_index,
                "item_score": item_score,
                "item_author": item_author,
                "item_intr": item_intr
            })
        except AttributeError:
            pass
    return data


def save_data(data):
    book = xlwt.Workbook(encoding='utf-8', style_compression=0)
    sheet = book.add_sheet('豆瓣电影Top250', cell_overwrite_ok=True)
    sheet.write(0, 0, '名称')
    sheet.write(0, 1, '图片')
    sheet.write(0, 2, '排名')
    sheet.write(0, 3, '评分')
    sheet.write(0, 4, '作者')
    sheet.write(0, 5, '简介')

    n = 1
    for item in data:
        sheet.write(n, 0, item['item_name'])
        sheet.write(n, 1, item['item_img'])
        sheet.write(n, 2, item['item_index'])
        sheet.write(n, 3, item['item_score'])
        # sheet.write(n, 4, item['item_author'])
        sheet.write(n, 5, item['item_intr'])
        n += 1
    book.save('豆瓣最受欢迎的250部电影.xlsx')


def main():
    data = []
    for i in range(0, 10):
        html = GetHtml(baseUrl + '?start=' + str(i * 25))
        data.extend(extract(html))
    save_data(data)


if __name__ == "__main__":
    main()

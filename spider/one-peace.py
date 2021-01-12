import requests
from bs4 import BeautifulSoup
import xlwt
import gzip
import zlib
import io
import time

baseUrl = 'https://store.steampowered.com/search/results/?query&start=0&count=50&dynamic_data=&sort_by=Released_DESC&snr=1_7_7_2300_7&specials=1&infinite=1'


def GetHtml(url):
    try:
        res = requests.get(url, headers={
            'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
            'Accept-Language': 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3'})
        if res.status_code == 200:
            res.encoding = 'utf-8'
            return res.text
    except requests.RequestException:
        return None


def extract(html):
    print(html)
    soup = BeautifulSoup(html, 'html')
    # list = soup.find_all(class_='pure-u-1-2 pure-u-lg-1-4')
    data = []
    # for item in list:
    #     try:
    #         a = item.find('a')
    #         name = a.string
    #         url = a['href']
    #         d = {
    #             'name': name,
    #             'url': url
    #         }
    #         data.append(d)
    #     except AttributeError:
    #         pass
    return data


def save_data(data):
    # print(data)
    # for item in data:
    #     html = GetHtml(baseUrl + item.get('url'))
    #     # soup = BeautifulSoup(html)
    #     # li = soup.get('mhurl')
    #     print(html)
    #     time.sleep(10)
    pass


def main():
    # data = []
    # for i in range(0, 10):
    #     html = GetHtml(baseUrl + '?start=' + str(i * 25))
    #     data.extend(extract(html))
    # save_data(data)
    html = GetHtml(baseUrl)
    data = extract(html)
    save_data(data)


if __name__ == "__main__":
    main()

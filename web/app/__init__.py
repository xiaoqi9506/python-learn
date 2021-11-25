from flask import Flask
import sys
from config import config

sys.path.append("..")


def create_app(config_name):
    # 初始化
    app = Flask(__name__)

    # 导致指定的配置对象:创建app时，传入环境的名称
    app.config.from_object(config[config_name])

    # 注册所有蓝本
    register_blueprints(app)

    return app


def register_blueprints(app):
    # 导入蓝本对象
    # 方式一
    from app.api import api

    # 方式二：这样，就不用在app/api/__init__.py（创建蓝本时）里面的最下方单独引入各个视图模块了
    # from app.api.views import api
    # from app.api.errors import api

    # 注册api蓝本,url_prefix为所有路由默认加上的前缀
    app.register_blueprint(api, url_prefix='/')

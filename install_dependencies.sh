#!/bin/bash

# 使用国内镜像源
PYTHON_MIRROR="https://pypi.tuna.tsinghua.edu.cn/simple"
NPM_MIRROR="https://registry.npmmirror.com"

# Python 依赖列表
PYTHON_DEPENDENCIES=(
    requests aiohttp flask django numpy pandas matplotlib scipy seaborn
    plotly lxml beautifulsoup4 pycryptodome pyjwt websocket-client schedule
    redis sqlalchemy openpyxl xlrd pytest scikit-learn torch tensorflow keras
    opencv-python pillow fastapi uvicorn pyyaml pyinstaller black mypy
    autopep8 flake8 twisted paramiko cryptography pyqt5 pytz python-dateutil
    sympy networkx pytest-django pytest-flask pytest-cov email-validator
    pygments pyexcel pyexcel-xlsx boto3 six docopt
)

# Node.js 依赖列表
NODE_DEPENDENCIES=(
    express react vue angular jquery lodash moment axios bluebird chai mocha
    jest webpack babel-core typescript eslint prettier body-parser dotenv
    cookie-parser cors socket.io passport mongoose mysql pg sqlite3 sequelize
    swagger-ui-express jsonwebtoken bcrypt uuid async rxjs nodemailer formidable
    multer sharp node-fetch got inquirer yargs chalk commander debug config
    validator helmet compression connect-redis redis xml2js xmlbuilder nconf
)

# 安装 Python 依赖
echo "开始安装 Python 依赖..."
for dependency in "${PYTHON_DEPENDENCIES[@]}"; do
    echo "正在安装 Python 依赖: $dependency"
    pip3 install "$dependency" -i "$PYTHON_MIRROR"
done
echo "Python 依赖安装完成!"

# 安装 Node.js 依赖
echo "开始安装 Node.js 依赖..."
for dependency in "${NODE_DEPENDENCIES[@]}"; do
    echo "正在安装 Node.js 依赖: $dependency"
    npm install "$dependency" --registry "$NPM_MIRROR"
done
echo "Node.js 依赖安装完成!"

echo "所有依赖安装完成!"

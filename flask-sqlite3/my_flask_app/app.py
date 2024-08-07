from flask import Flask

app = Flask(__name__)
app.config['SECRET_KEY'] = 'your_secret_key'

from my_flask_app import routes

if __name__ == '__main__':
    app.run(debug=True)


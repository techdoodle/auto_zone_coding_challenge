from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify({
      'greeting': 'Hello World!' 
    })


@app.route('/health')
def health_check():
    return 'OK'


if __name__ == '__main__':
    app.run(debug=True)

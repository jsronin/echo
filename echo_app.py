from flask import Flask
import sys

app = Flask(__name__)


@app.route('/echo/<message>', methods=['GET'])
def echo(message):
    return message
    
print('Starting Server :')
host = '0.0.0.0'
if len(sys.argv) > 1:
    host = sys.argv[1]
app.run(host=host, debug=True)    

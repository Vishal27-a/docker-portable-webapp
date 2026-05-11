from flask import Flask
import redis
import socket
import platform

app = Flask(__name__)

r = redis.Redis(host='redis', port=6379, decode_responses=True)

@app.route('/')
def home():
    visits = r.get('visits')

    if visits is None:
        visits = 0

    visits = int(visits) + 1
    r.set('visits', visits)

    return f"""
    <h2>Docker Real World Project 🚀</h2>
    <p><b>Visits:</b> {visits}</p>
    <p><b>Hostname:</b> {socket.gethostname()}</p>
    <p><b>OS:</b> {platform.system()}</p>
    """

app.run(host='0.0.0.0', port=5000)
# test_hello.py
from wsgi import app

def test_hello():
    response = app.test_client().get('/')

    assert response.status_code == 200
    assert response.data == b'Hello, World!'

def test_arizona():
    response = app.test_client().get('/california')

    assert response.status_code == 200
    assert response.data == b'Hello, California!'
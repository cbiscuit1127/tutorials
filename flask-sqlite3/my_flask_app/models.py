from my_flask_app.database.py import get_db_connection

def insert_user(username, email, password):
    conn = get_db_connection()
    conn.execute('INSERT INTO user (username, email, password) VALUES (?, ?, ?)', (username, email, password))
    conn.commit()
    conn.close()

def get_user_by_username(username):
    conn = get_db_connection()
    user = conn.execute('SELECT * FROM user WHERE username = ?', (username,)).fetchone()
    conn.close()
    return user


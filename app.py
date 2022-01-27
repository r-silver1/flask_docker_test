import os
from flask import Flask

app = Flask(__name__)

# color = "red"
# use environmental variables
#  https://stackoverflow.com/a/65515264/10432596
color = os.environ.get('APP_COLOR')

@app.route("/")
def main():
    print("HERE!!!")
    print(f"color: {color}")
    return(f"""
    <!DOCTPE html>
    <head>
        <title>{color}</title>
    </head>
    <body style="background:{color}">
        Your text here {color}
    <body>
    """)


if __name__ == "__main__":
    app.run(host="0.0.0.0")
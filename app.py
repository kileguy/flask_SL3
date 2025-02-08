from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/products")
def products():
    return "<p>This is the products page</p>"

@app.route("/about")
def about():
    return "<p>Learn more about us here!</p>"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)
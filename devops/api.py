from flask import Flask, render_template

# App configuration
DEBUG = True
app = Flask(__name__)
app.config.from_object(__name__)

# First page
@app.route("/", methods = ["GET", "POST"])
def homePage():

    # Render the landing page
    return render_template("/landing.html")

# Run app
if __name__ == "__main__":
    app.run(debug=False, port = 8080)
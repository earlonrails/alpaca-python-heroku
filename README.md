# Alpaca Python Heroku
---

### Usage

  - [Fork this on github](https://github.com/earlonrails/alpaca-python-heroku/fork)
  - Update the `main.py` file to your own algorithm
  - `heroku login`
  - `heroku create alpaca-python`
  - `heroku stack:set container`
  - `heroku config:set APCA_API_KEY_ID=[YOUR_API_KEY_HERE]`
  - `heroku config:set APCA_API_SECRET_KEY=[YOUR_API_SECRET_HERE]`
  - `heroku config:set STOCK=[YOUR_TARGET_STOCK]`
  - :warning: Enable live trading `heroku config:set BASE_URL=https://api.alpaca.markets`
  - `git push heroku master`


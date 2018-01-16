# image_lingo

A tool to create word quizzes based on pictures fetched from Google image search.

Start by creating a json file with data mirroring the following:

```
[{
    "word": "apple",
    "search terms": "fruit apple",
    "answer": "jablko"
  },
  {
    "word": "mountain",
    "search terms": "mountain",
    "answer": "hora"
  },
  {
    "word": "fork",
    "search terms": "fork",
    "answer": "vidlička",
    "keyboard answer": "vidlicka"
  }
]
```

*Note that in the last case, a keyboard answer data piece was added. This facilitates easier guesses when accents and other marks are not easily accessable on a particular keyboard.

Then use app.rb with necessary input and output arguments:

`$ ruby app.rb /Path/To/Input.json /Path/To/Output.html`

The app performs a quick scrape and it is quite possible that it will break if Google changes their markup. I have tried to make it easier to fix by adding selectors to `config/config.yaml` but it is far from a perfect solution.

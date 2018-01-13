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
    "answer": "vidlička"
  }
]
```

Then use the app.rb with necessary input and output arguments:

`$ ruby app.rb /Path/To/Input.json /Path/To/Output.html`

The app performs a quick scrape and it is quite possible that it will break if Google changes their markup. I have tried to make it easier to fix by adding selectors to `config/config.yaml` but it is far from a perfect solution.

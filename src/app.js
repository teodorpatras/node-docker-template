import express from 'express';

const app = express()

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/boogie', async (req, res) => {
  const result = await new Promise((resolve => {
    setTimeout(() => {
      resolve('Good time! 👯‍♀️')
    }, 3000);
  }))
  res.send(result)
});

app.listen(3000, () => console.log('\nFancy app listening on port 3000!\n'))

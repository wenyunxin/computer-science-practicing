import requests
from bs4 import BeautifulSoup

def fetch_movie_details(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')

    movies = []
    movie_items = soup.find_all('div', class_='item')

    for item in movie_items:
        title = item.find('span', class_='title').get_text()
        star = item.find('span', class_='rating_num').get_text()
        quote_tag = item.find('span', class_='inq')

        if quote_tag:
            quote = quote_tag.get_text()
        else:
            quote = 'No quote available'

        movies.append({'title': title, 'star': star, 'quote': quote})

    return movies

if __name__ == "__main__":
    url = 'https://movie.douban.com/top250'
    movie_details = fetch_movie_details(url)
    print(movie_details)

from bs4 import BeautifulSoup
import requests

def get_and_save_svg_url(svg_url):

    # Sending a request to the SVG URL
    response = requests.get(svg_url)

    # Checking if the request was successful
    if response.status_code == 200:
        # Path to save the SVG file
        file_path = 'path/to/save/svg_file.svg'

        # Saving the SVG content to a file
        with open(file_path, 'wb') as file:
            file.write(response.content)
        return True
    else:
        print("file not found")
        return False


file_path = 'gallery.html'

# Reading the HTML file
with open(file_path, 'r', encoding='utf-8') as file:
    html_content = file.read()

soup = BeautifulSoup(html_content, 'html.parser')
# Extracting all text from the webpage

divs = soup.find_all('div', class_='inner card-body')

captions = []
with open("captions.txt", 'w', encoding='utf-8') as file:
    file.write("caption;file_name"  + "\n")   
    for div in divs:
        #print(div)
        # Find the h6 tag within this div
        h6 = div.find('h6', class_='caption')
        svg_img = div.find('img', {'loading': 'lazy'})

        svg_url = svg_img['src']
        file_name = svg_url.replace("./VectorFusion_ Text-to-SVG by Abstracting Pixel-Based Diffusion Models _ Gallery_files/","")
        print(file_name)
        
        
        
        if h6 and h6.has_attr('data-original-title'):
            # Extracting the 'data-original-title' attribute
            data_original_title = h6['data-original-title']
            if not "pixel art." in data_original_title and not "line drawing" in data_original_title:
            
                file.write(data_original_title +";" +file_name + "\n")        

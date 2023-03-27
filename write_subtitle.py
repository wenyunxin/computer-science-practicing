

def write_subtitle(filename):
    """import the re package."""
    import re

    """creat the re pattern"""
    pattern = r'\d+\n[\d,:]+ --> [\d,:]+'
    pattern1 = r'<(font.+\/font)>'

    """open file and read it, then use re module to re-write it. then format the result"""
    with open(filename, 'r+', encoding="utf-8") as f:
        read_string = f.read()
        re_string = re.sub(pattern, '', read_string)
        re_string_font = re.sub(pattern1, '', re_string)
        new_string = re_string_font.replace("\n", " ").replace("   ", "\n")

    """create new file and filled with the "new_string" that re-writed-formatted above."""
    with open('new_' + filename.replace(filename.split('.')[-1], 'md'), 'w', encoding="utf-8") as f:
        f.write(new_string)

    return True


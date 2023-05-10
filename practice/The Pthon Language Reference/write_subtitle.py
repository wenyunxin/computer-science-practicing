def write_subtitle(filename):
    """import the re package."""
    import re

    """creat the re pattern"""
    pattern = r'\n[0-9]+\n[0-9]{2}:[0-9]{2}:[0-9]{2},[0-9]{3} --> [0-9]{2}:[0-9]{2}:[0-9]{2},[0-9]{3}'

    """open file and read ite, than use re to re-write it."""
    with open(filename, 'r+', encoding="utf-8") as f:
        read_string = f.read()
        re_string = re.sub(pattern, '', read_string)
        new_string = re_string.replace("\n\n", " ").replace("\n", " ")

    """create new file and filled with the "new_string" that re-writed above."""
    with open('new_' + filename, 'w', encoding="utf-8") as f:
        f.write(new_string)

    return True

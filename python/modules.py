import time
from datetime import datetime

def get_localtime():
    """Get local current time, and
    
    the days between 1970.1.1 and current day.
    """
    moment = datetime(*(time.localtime()[:6]))
    localtime = datetime(*(time.localtime()[:3]))
    day = localtime - datetime(1970, 1, 1)
    print("{:%H:%M:%S} {.days}".format(moment, day))

if __name__ == "__main__":
    get_localtime()
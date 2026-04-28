requests = {}

def is_allowed(ip):
    if requests.get(ip, 0) > 100:
        return False
    requests[ip] = requests.get(ip, 0) + 1
    return True

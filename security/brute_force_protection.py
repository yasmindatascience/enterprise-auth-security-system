def check_login_attempts(attempts):
    if attempts > 5:
        return "BLOCKED"
    return "ALLOWED"

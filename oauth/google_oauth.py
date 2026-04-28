def google_login(user_info):
    return {
        "email": user_info["email"],
        "provider": "google",
        "status": "authenticated"
    }

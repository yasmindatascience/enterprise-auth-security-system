def github_login(user_info):
    return {
        "email": user_info["email"],
        "provider": "github",
        "status": "authenticated"
    }

def check_access(role, permission):
    permissions = {
        "admin": ["read", "write", "delete"],
        "user": ["read"],
        "analyst": ["read", "analytics"]
    }

    return permission in permissions.get(role, [])

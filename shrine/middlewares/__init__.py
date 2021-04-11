from starlette.datastructures import Secret
from starlette.middleware import Middleware
from starlette_authlib.middleware import AuthlibMiddleware
from typing import List

__all__: List[str] = ["middlewares"]

middlewares: List[Middleware] = [
    Middleware(AuthlibMiddleware, secret_key=Secret("CHANGEME")),
]

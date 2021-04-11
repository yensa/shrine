from starlette.applications import Starlette

from .middlewares import middlewares
from .routes import routes
from .settings import Settings


settings = Settings()

app = Starlette(debug=settings.debug, routes=routes, middleware=middlewares)

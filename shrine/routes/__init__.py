from starlette.routing import BaseRoute, Route
from typing import List

from .hello_world import hello_world

__all__: List[str] = ["routes"]

routes: List[BaseRoute] = [
    Route("/", hello_world),
]

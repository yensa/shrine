from starlette.responses import PlainTextResponse, Response


async def hello_world(request) -> Response:
    return PlainTextResponse("Hello World !")

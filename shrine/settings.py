from pydantic import BaseSettings
from typing import List

__all__: List[str] = ["Settings"]


class Settings(BaseSettings):
    debug: bool = False

    class Config:
        env_prefix = "shrine_"

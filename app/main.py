from fastapi import FastAPI

app = FastAPI()


@app.get("/", tags=["root"])
async def read_root() -> dict:
    return {"Page name": "Main"}

# io

## `builtin_io`

Built-in io functions.

**Examples:**
```awkward
io.open("file_name", "mode")  # opens file and return stream id
io.read("stream_id")  # reads content from stream
io.write("stream_id", "data")  # writes content to stream
io.close("stream_id")  # closes stream by id
```


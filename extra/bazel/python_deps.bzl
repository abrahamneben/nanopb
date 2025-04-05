load(
    "@//chromatic/third_party/python:platform_defs.bzl",
    "platform_args_linux", "platform_args_darwin",
)
load("@rules_python//python:pip.bzl", "pip_parse")

def nanopb_python_deps(interpreter=None):
    # Required for python deps for generator plugin.
    # Used by: com_github_nanopb_nanopb.
    # Used in modules: generator.
    if "nanopb_pypi" not in native.existing_rules():
        pip_parse(
            name = "nanopb_pypi",
            requirements_lock = "@com_github_nanopb_nanopb//:extra/requirements_lock.txt",
            python_interpreter_target = interpreter,
        )
    if "nanopb_pypi_linux" not in native.existing_rules():
        pip_parse(
            name = "nanopb_pypi_linux",
            requirements_lock = "@com_github_nanopb_nanopb//:extra/requirements_lock.txt",
            extra_pip_args = platform_args_linux,
            python_interpreter_target = interpreter,
            download_only=True,
        )
    if "nanopb_pypi_darwin" not in native.existing_rules():
        pip_parse(
            name = "nanopb_pypi_darwin",
            requirements_lock = "@com_github_nanopb_nanopb//:extra/requirements_lock.txt",
            extra_pip_args = platform_args_darwin,
            python_interpreter_target = interpreter,
            download_only=True,
        )

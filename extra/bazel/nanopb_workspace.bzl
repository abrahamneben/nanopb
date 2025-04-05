load("@nanopb_pypi//:requirements.bzl", generic_install_deps="install_deps")
load("@nanopb_pypi_linux//:requirements.bzl", linux_install_deps="install_deps")
load("@nanopb_pypi_darwin//:requirements.bzl", darwin_install_deps="install_deps")
load("@rules_proto_grpc//:repositories.bzl", "rules_proto_grpc_repos", "rules_proto_grpc_toolchains")
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

def nanopb_workspace():
    generic_install_deps()
    linux_install_deps()
    darwin_install_deps()
    rules_proto_grpc_toolchains()
    rules_proto_grpc_repos()
    rules_proto_dependencies()
    rules_proto_toolchains()

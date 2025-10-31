from pythonforandroid.recipe import Recipe
from pythonforandroid.toolchain import shprint, current_directory
import sh
import os

class ZlibRecipe(Recipe):
    version = "1.3"
    url = "https://github.com/madler/zlib/archive/refs/tags/v1.3.tar.gz"
    name = "zlib"

    def build_arch(self, arch):
        with current_directory(self.get_build_dir(arch.arch)):
            shprint(sh.Command("./configure"), "--prefix=" + self.ctx.get_build_dir(arch.arch))
            shprint(sh.make)
            shprint(sh.make, "install")

recipe = ZlibRecipe()

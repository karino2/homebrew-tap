# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mdvtbl < Formula
  desc "GUI markdown editor read from stdin and write to stdout."
  homepage ""
  url "https://github.com/karino2/mdvtbl/releases/download/v1.0.2/mdvtbl-darwin-x64.1.0.2.zip"
  sha256 "3b5204990147e383c76c666d25e4008a5a6921726e19935d3761ebbef2000576"
  license "Apache-2.0"

  depends_on "dotnet"

  def install
    bin.install "mdvtbl"
  end

  def caveats
    <<~EOS
      If you see the error saying
      "A fatal error occurred. The required library libhostfxr.dylib could not be found."
      You need to set DOTNET_ROOT like 
        export DOTNET_ROOT="$(brew --prefix)/opt/dotnet/libexec"
    EOS
  end
end

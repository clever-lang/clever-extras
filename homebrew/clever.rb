require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Clever < Formula
  homepage 'http://clever-lang.org'
  head 'https://github.com/clever-lang/clever.git'

  depends_on 'cmake' => :build
  depends_on 'bison'
  depends_on 'pkg-config'
  depends_on 'libffi'
  depends_on 'pcre'
  depends_on 're2c'
  
  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end

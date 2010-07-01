require "tempfile"

module MiniMagick
  class ImageTempFile < Tempfile
    def make_tmpname(ext, n)
      'mini_magick%d-%d%s' % [$$, n.to_i, ext ? ".#{ext}" : '']
    end
  end
end

class CreateImagePlaceholder < Formula
  desc "A tiny command line application to generate base64 encoded image placeholders"
  homepage "https://github.com/ksassnowski/create-image-placeholder"
  url "https://github.com/ksassnowski/create-image-placeholder/releases/download/v1.0.0/create-image-placeholder.tar.gz"
  sha256 "5c89bff93c5761bb039af86d2ec37ceb7c5cefebfd238dbb34a25b6652b656b8"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/ksassnowski/create-image-placeholder"
    bin_path.install Dir["*"]
    cd bin_path do
      system "go", "build", "-o", bin/"create-image-placeholder", "."
    end
  end

  test do
    system "true"
  end
end

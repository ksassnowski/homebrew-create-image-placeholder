class CreateImagePlaceholder < Formula
  desc "A tiny command line application to generate base64 encoded image placeholders"
  homepage "https://github.com/ksassnowski/create-image-placeholder"
  url "https://github.com/ksassnowski/create-image-placeholder/archive/v1.0.1.tar.gz"
  sha256 "272660594b5d10d6c08893272826ebbf5f9cca6ff90fd533075fc6846370f62f"

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

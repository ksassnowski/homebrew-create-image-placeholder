class CreateImagePlaceholder < Formula
  desc "A tiny command line application to generate base64 encoded image placeholders"
  homepage "https://github.com/ksassnowski/create-image-placeholder"
  url "https://github.com/ksassnowski/create-image-placeholder/archive/v1.0.1.tar.gz"
  sha256 "727fac4b379b929e72966cde2b83b2e5ff39968c31e433ee7050bd2d4543b53e"

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

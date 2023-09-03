cask "provengo" do
  version "0.7.5"
  sha256 "629d216ac922c9a531cec8a4d604c509b13b1a2ad3f4b9257218f0034ba592f5"

  url "https://downloads.provengo.tech/installer/provengo-#{version}.zip"
  name "provengo"
  desc "Model-based testing and automation system"
  homepage "https://provengo.tech/"

  livecheck do
    url "https://downloads.provengo.tech/installer/"
    regex(/provengo[._-](\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on formula: [
    "graphviz",
    "openjdk",
  ]

  app "Provengo-2023-07-20.uber.jar"
  binary "provengo"
  caveats do
    license "https://provengo.tech/?page_id=169"
    depends_on_java "11+"
  end
end

# typed: strict
# frozen_string_literal: true

# Template for Casks/ovi-code.rb in the Ovicorps/homebrew-ovi-code tap.
# Run scripts/brew-cask-release.sh after the tagged GitHub release completes.
cask "ovi-code" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "4617a9aad1b012782b6ca189109ec2b3d4a2308162c371d5531e6d98c1a636d8",
         intel: "4eb314b55e68991a4692d0fa461414e0a8303738d65bf242672720c657c297bf"

  url "https://github.com/Ovicorps/ovi-code/releases/download/v#{version}/ovi-code-darwin-#{arch}.tar.gz"
  name "OVI-CODE"
  desc "Terminal-based code-editing TUI agent powered by OpenRouter"
  homepage "https://github.com/Ovicorps/ovi-code"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  binary "ovi-code"

  zap trash: "~/.ovi-code"
end

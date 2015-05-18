class MackerelAgentOsxPlugins < Formula
  homepage "https://github.com/aereal/mackerel-agent-plugins-osx"
  head 'git://github.com/aereal/mackerel-agent-plugins-osx.git'
  sha256 "2e0732655d3d8366cf94ff22c8cd4f366f2b2169d4563bc78a738cc4a616483c"

  def install
    installable_commands.each do |cmd|
      bin.install(cmd)
    end
  end

  test do
    installable_commands.each do |cmd|
      system File.basename(cmd)
    end
  end

  def installable_commands
    %w(
      mackerel-plugin-osx-battery/mackerel-plugin-osx-battery
    )
  end
end

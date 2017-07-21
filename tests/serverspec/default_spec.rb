require "spec_helper"
require "serverspec"

package = "git"
additional_packages = ["git-flow"]

case os[:family]
when "redhat"
  additional_packages = ["git-cvs"]
when "openbsd"
  additional_packages = ["git-cvs"]
when "freebsd"
  additional_packages = ["gitflow"]
end

describe package(package) do
  it { should be_installed }
end

describe command("git --version") do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/^git version/) }
  its(:stderr) { should eq "" }
end

additional_packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end

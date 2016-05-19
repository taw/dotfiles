require "pathname"

desc "Cleanup brew cache"
task "brew:cleanup" do
  system "brew cleanup"
  if Pathname("/Library/Caches/Homebrew").exist?
    system "trash /Library/Caches/Homebrew"
  end
end

task "update" => "brew:cleanup"

desc "Kill all ~/.DS_Store files"
task "dsstore:kill" do
  killed = 0
  Dir["**/.DS_Store"].each do |path|
    begin
      Pathname(path).unlink
      killed += 1
    rescue
      warn "Can't delete: #{path}"
    end
  end
  puts "#{killed} .DS_Store files removed" if killed > 0
end

task "update" => "dsstore:kill"

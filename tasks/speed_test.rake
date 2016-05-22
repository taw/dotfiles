desc "Run Internet speed test"
task :speed_test do
  # http://stackoverflow.com/questions/426272/how-to-test-internet-connection-speed-from-command-line?noredirect=1#comment20357708_426272
  system "curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"
end

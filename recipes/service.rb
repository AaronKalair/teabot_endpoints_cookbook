systemd_unit 'teabot_endpoints.service' do
  content({
    Unit: {
      Description: 'teabot_endpoints',
      Documentation: 'https://github.com/AaronKalair/teabot_endpoints',
      Requires: 'docker.service',
     },
     Service: {
       ExecStartPre: '/bin/sleep 1',
       ExecStartPre: '/usr/bin/docker pull akalair/teabot_endpoints',
       ExecStart: '/usr/bin/docker run --restart=always --name=teabot_endpoints -e SLACK_API_TOKEN=$SLACK_API_TOKEN -e ROLLBAR_API_TOKEN=$ROLLBAR_API_TOKEN  -p 8000:8000 -v /data/teapot.db:/srv/teapot.db akalair/teabot_endpoints',
       ExecStop: '/usr/bin/docker stop teabot_endpoints',
       ExecStopPost: '/usr/bin/docker rm -f teabot_endpoints',
       ExecReload: '/usr/bin/docker restart teabot_endpoints '
     },
     Install: {
       WantedBy: 'multi-user.target',
     },
   })
  action :create
end


service 'teabot_endpoints' do
  action [:enable, :start]
end

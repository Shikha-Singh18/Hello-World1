function getip()
{
ip addr | grep -w $1 | awk -F '/inet/ {print $2}'|awk -F '/' '{print $1}'
}
getip $1


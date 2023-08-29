BEGIN{
Lost = 0;
}
{
packetType = $5
event = $1
dst=$10
if(packetType="cbr"){
	if(event=="D"){
		if(dst=="0"){
			Lost++;
		}
	}
}
}
END{
printf(" packets dropped for node 0 : %d packets \n",  Lost);          
}

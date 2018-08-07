import ipaddress

#########################################################################

def is_ip_valid(address):
	'''
	If address/prefix is a valid IP network, return it as an ipaddress object,
	otherwise, return None
	'''
	try:
		return ipaddress.ip_network(unicode(address))
	except ValueError:
		return None

##########################################################################

def validate_ip_range(address):
	ip_address = is_ip_valid(address)
	
	if ip_address is None:
		return None
	try:
		return list(ipaddress.ip_network(unicode(ip_address)).subnets())
	except ValueError:
		return None

print is_ip_valid('192.168.1.0/24')
print validate_ip_range('2a02:a448:ddb0::/44')

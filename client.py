import os
import sys

def read_settings(filename):

	file = open(filename,'r')

def show_interfaces():

	print("Available interfaces: \n")
	os.system("tcpdump -D")

def start_sniffing(size = 3):

	print("Sniffing \n")
	os.system(f'sudo tcpdump -C {size} -tttt -w /tmp/dumps/dump')

def search_dumps(dir,dest):

	dumps = os.listdir(dir)
	for i in dumps:
		way = dir + i
		os.system("scp way user@1.1.1.1 /tmp/dumps")

def main():

	if not os.path.exists("/tmp/dumps"):
		os.system("mkdir /tmp/dumps")
		os.system("chmod 777 -R /tmp/dumps")

	show_interfaces()
	start_sniffing()

main()

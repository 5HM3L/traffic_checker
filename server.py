import os
import sys
import pandas as pd

exlusion_network = "192.168.1.1/24"
gateway = "192.168.1.1"

def pcap_to_csv(input_dump):

	os.system(f"bash ./pcap_to_csv.sh {str(input_dump)};")
	#file_loader("Yourdump.csv")
	#os.remove("Yourdump.csv")

def data_processing(dump):

	return 0

def main():

	current_path = "/tmp/dumps/"

	dumps = os.listdir(current_path)
	for dump in dumps:
		current_path += dump
		pcap_to_csv(current_path)
		print(current_path)
		break
main()

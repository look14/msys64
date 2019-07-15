#!/usr/bin/python3
import sys
from enum import Enum

def find_rom_list(rom_list, name):
	for i in rom_list:
		if name.find(i) >= 0:
			return True

	return False

def flash_download_convert(str_file, str_save, rom_list):
	lines = None
	with open(str_file, "r") as f:
		lines = f.readlines()
		length = len(lines)
		pos = 0

		while pos < length:
			if lines[pos].find('- rom:') >= 0 and (pos + 3) < length and False == find_rom_list(rom_list, lines[pos+1]):
				lines.pop(pos)
				lines.pop(pos)
				lines.pop(pos)
				lines.pop(pos)
				length -= 4
			else:
				pos += 1

	with open(str_save, "w") as f:
		f.writelines(lines)

if "__main__" == __name__:
	if len(sys.argv) >= 3:
		rom_list = [sys.argv[i] for i in range(3,len(sys.argv))]
		flash_download_convert(sys.argv[1], sys.argv[2], rom_list)
	else:
		flash_download_convert("flash_download.cfg", "flash_download2.cfg", ['kaima.bin'])

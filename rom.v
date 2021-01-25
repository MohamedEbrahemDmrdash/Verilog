module rom(addr,data);
	input [4:0] addr;
	output [4:0] data;
	reg[4:0] arom [21:0];
	assign data = arom[addr];
initial 
$readmemb("rom_content.txt",arom);
endmodule
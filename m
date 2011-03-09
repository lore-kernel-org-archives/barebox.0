Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PxFG9-0002Wx-7n
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 09:00:48 +0000
Message-ID: <4D7741B5.3070306@eukrea.com>
Date: Wed, 09 Mar 2011 10:00:37 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4D764613.5020708@telemotive.de>	<AANLkTi=CXxPuac0Jub=uyD-A0qvDMgK2UVYv++JP_X+T@mail.gmail.com>	<4D7651A2.90301@eukrea.com>	<201103090804.38216.marc@cpdesign.com.au>
	<4D773B5F.5070908@telemotive.de>
In-Reply-To: <4D773B5F.5070908@telemotive.de>
Content-Type: multipart/mixed; boundary="------------010702040507040708000209"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Install barebox to target
To: Thomas Mayer <thomas.mayer@telemotive.de>
Cc: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------010702040507040708000209
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 09/03/2011 09:33, Thomas Mayer wrote:
> thanks a lot for your help!
> I already started to think that I'm the first person who try to run
> barebox from a sd-card  :D
>
works fine here on i.MX25 & 35 (and I can't remember if I tested it on 51).

> Another question, is there any good way to get a debug or something like
> that at this very early point of boot process?
> Because I think to switch on the board and hope that something will send
> to the serial port isn't the best way to debug :D
>
> In chapter 7.4.1.4.2 of the i.mx35 datasheet I found something
> interresting. It seems to be possible to query boot errors via serial
> protocol.
> But I couldn't find a example or a list of possible errors.
> Has anyone tried to query errors this way?
>
>
please find attached a quick and dirty (I'm not a programmer) soft to load the 
i.MX (tested on i.MX25/35/51) through serial port and the init file for our 
i.MX35 design (mDDR based).

The cfg file syntax is quite simple :
1st line :
file name_of_the_bin_file_to_load load RAM_ADDRESS_TO LOAD exec 
ADDRESS_TO_JUMP_FOR_EXECUTION

then, the syntax of the register access is the one of the configuration files 
of the peedi JTAG adapter we are using here : 
http://download.ronetix.info/peedi/cfg_examples/ (so you can find init for DDR2)

With this tool you can easily initalize the CPU registers and test your ram 
(take care when you touch to PLL or clocks as this can break the bootrom 
execution or the serial line).

A future evolution will be a sort of shell to be able to read/write registers 
in live from the command line.

Feel free to provide feedback.

Eric

--------------010702040507040708000209
Content-Type: text/plain;
 name="mx35.cfg"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="mx35.cfg"

file barebox-eukrea-cpuimx35.bin load 0x87f00000 exec 0x87f02000

memory write32 0x43f00040 0x00000000
memory write32 0x43f00044 0x00000000
memory write32 0x43f00048 0x00000000
memory write32 0x43f0004C 0x00000000
memory write32 0x43f00050 0x00000000
memory write32 0x43f00000 0x77777777
memory write32 0x43f00004 0x77777777
memory write32 0x53f00040 0x00000000
memory write32 0x53f00044 0x00000000
memory write32 0x53f00048 0x00000000
memory write32 0x53f0004C 0x00000000
memory write32 0x53f00050 0x00000000
memory write32 0x53f00000 0x77777777
memory write32 0x53f00004 0x77777777

memory write32 0x53F80000 0x003F4208
memory write32 0x53F8001C 0x000F2005
memory write32 0x53F80020 0x00031801

memory write32 0x53F80004 0x00821000
memory write32 0x53F80004 0x00821000
memory write32 0x43FAC368  0x00000002
memory write32 0x43FAC36C  0x00000002
memory write32 0x43FAC370  0x00000002
memory write32 0x43FAC374  0x00000002
memory write32 0x43FAC378  0x00000002
memory write32 0x43FAC37C  0x00000002
memory write32 0x43FAC380  0x00000002
memory write32 0x43FAC384  0x00000002
memory write32 0x43FAC388  0x00000002
memory write32 0x43FAC38C  0x00000002
memory write32 0x43FAC390  0x00000002
memory write32 0x43FAC394  0x00000002
memory write32 0x43FAC398  0x00000002
memory write32 0x43FAC39C  0x00000002
memory write32 0x43FAC3A0  0x00000002
memory write32 0x43FAC3A4  0x00000002
memory write32 0x43FAC3A8  0x00000002
memory write32 0x43FAC3AC  0x00000002
memory write32 0x43FAC3B0  0x00000002
memory write32 0x43FAC3B4  0x00000002
memory write32 0x43FAC3B8  0x00000002
memory write32 0x43FAC3BC  0x00000002
memory write32 0x43FAC3C0  0x00000002
memory write32 0x43FAC3C4  0x00000002
memory write32 0x43FAC3C8  0x00000002
memory write32 0x43FAC3CC  0x00000002
memory write32 0x43FAC3D0  0x00000002
memory write32 0x43FAC3D4  0x00000002
memory write32 0x43FAC3D8  0x00000002

memory write32 0x43FAC3DC  0x00000082
memory write32 0x43FAC3E0  0x00000082
memory write32 0x43FAC3E4  0x00000082
memory write32 0x43FAC3E8  0x00000082
memory write32 0x43FAC3EC  0x00000082
memory write32 0x43FAC3F0  0x00000082
memory write32 0x43FAC3F4  0x00000082
memory write32 0x43FAC3F8  0x00000082
memory write32 0x43FAC3FC  0x00000082
memory write32 0x43FAC400  0x00000082
memory write32 0x43FAC404  0x00000082
memory write32 0x43FAC408  0x00000082
memory write32 0x43FAC40C  0x00000082
memory write32 0x43FAC410  0x00000082
memory write32 0x43FAC414  0x00000082
memory write32 0x43FAC418  0x00000082
memory write32 0x43FAC41c  0x00000082
memory write32 0x43FAC420  0x00000082
memory write32 0x43FAC424  0x00000082
memory write32 0x43FAC428  0x00000082
memory write32 0x43FAC42c  0x00000082
memory write32 0x43FAC430  0x00000082
memory write32 0x43FAC434  0x00000082
memory write32 0x43FAC438  0x00000082
memory write32 0x43FAC43c  0x00000082
memory write32 0x43FAC440  0x00000082
memory write32 0x43FAC444  0x00000082
memory write32 0x43FAC448  0x00000082
memory write32 0x43FAC44c  0x00000082
memory write32 0x43FAC450  0x00000082
memory write32 0x43FAC454  0x00000082
memory write32 0x43FAC458  0x00000082

memory write32 0x43FAC45c  0x00000082
memory write32 0x43FAC460  0x00000082
memory write32 0x43FAC464  0x00000082
memory write32 0x43FAC468  0x00000082

memory write32 0x43FAC46c  0x00000002
memory write32 0x43FAC470  0x00000002
memory write32 0x43FAC474  0x00000002
memory write32 0x43FAC478  0x00000002
memory write32 0x43FAC47c  0x00000002
memory write32 0x43FAC480  0x00000002  ; CSD0
memory write32 0x43FAC484  0x00000002  ; CSD1
memory write32 0x43FAC488  0x00000002
memory write32 0x43FAC48c  0x00000002
memory write32 0x43FAC490  0x00000002
memory write32 0x43FAC494  0x00000002
memory write32 0x43FAC498  0x00000002
memory write32 0x43FAC49c  0x00000002
memory write32 0x43FAC4A0  0x00000002
memory write32 0x43FAC4A4  0x00000002
memory write32 0x43FAC4A8  0x00000002
memory write32 0x43FAC4Ac  0x00000002
memory write32 0x43FAC4B0  0x00000002
memory write32 0x43FAC4B4  0x00000002
memory write32 0x43FAC4B8  0x00000002

memory write32 0x43FAC4Bc  0x00000082
memory write32 0x43FAC4C0  0x00000082
memory write32 0x43FAC4C4  0x00000082
memory write32 0x43FAC4C8  0x00000082


memory write32 0xB8001010 0x00000004
memory write32 0xB8001010 0x0000000C


memory write32 0xB8001010 0x00000004
wait 10
memory write32 0xB8001010 0x0000000C
wait 10
memory write32 0xB8001004 0x0009572B

memory write32 0xB8001000 0x92220000

memory write8 0x80000400 0xda

memory write32 0xB8001000 0xA2220000

memory write32 0x80000000 0x87654321
memory write32 0x80000000 0x87654321

memory write32 0xB8001000 0xB2220000

memory write8 0x80000033 0xda

memory write8 0x82000000 0xda

memory write32 0xB8001000 0x82224080

memory write32 0xB8001010 0x00000004

memory write32 0x53F80028 0x7D000028

--------------010702040507040708000209
Content-Type: text/x-csrc;
 name="imxrecover.c"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="imxrecover.c"

/*
 * Copyright
 * (c) 2010 Eukrea Electromatique, Eric B��nard <eric@eukrea.com>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; version 2 of
 * the License.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 * 
 * v0.1 - 11-03-09 - initial release to barebox users
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <string.h>
#include <pthread.h>
#include <errno.h>
#include <sys/stat.h>
#include <arpa/inet.h>

#define BLACK		0
#define RED		1
#define GREEN		2
#define BROWN		3
#define BLUE		4
#define MAGENTA		5
#define CYAN		6
#define GRAY		7
#define BLACK2		8
#define WHITE		9
#define FG_COLOR	BLACK
#define BG_COLOR	WHITE

#define LOG_DEBUG	1
#define LOG_INFO	1
#define LOG_DATA	1
#define LOG_ERROR	1
#define LOG_CMD		1

#define setcolor(fg,bg)		printf("\033[%d;%dm", fg +30, bg+40)

#ifdef LOG_DEBUG
#define DBG(fmt...) \
	do{	setcolor(RED,BLACK); \
		printf(fmt); \
		setcolor(FG_COLOR,BG_COLOR); \
		fflush(stdout); \
	} while(0)
#else
#define DBG(fmt...) while (0) {};
#endif

#ifdef LOG_INFO
#define INFO(fmt...) \
	do{	setcolor(GREEN,BLACK); \
		printf(fmt); \
		setcolor(FG_COLOR,BG_COLOR); \
		fflush(stdout); \
	} while(0)
#else
#define INFO(fmt...) while (0) {};
#endif

#ifdef LOG_ERROR
#define ERROR(fmt...) \
	do{	setcolor(BLACK,RED); \
		printf(fmt); \
		setcolor(FG_COLOR,BG_COLOR); \
		fflush(stdout); \
	} while(0)
#else
#define ERROR(fmt...) while (0) {};
#endif

#ifdef LOG_DATA
#define DATA(fmt...) \
	do{	setcolor(MAGENTA,BLACK); \
		printf(fmt); \
		setcolor(FG_COLOR,BG_COLOR); \
		fflush(stdout); \
	} while(0)
#else
#define DATA(fmt...) while (0) {};
#endif

#ifdef LOG_CMD
#define CMD(a) \
	do{	int tmp; \
		setcolor(BLUE,BLACK); \
		for (tmp = 0; tmp < sizeof(a); tmp++) \
		printf("%02x ", *(unsigned char *)((void *)& a +tmp)); \
		printf("\n"); \
		setcolor(FG_COLOR,BG_COLOR); \
		fflush(stdout); \
	} while(0)
#else
#define CMD(fmt) while (0) {};
#endif

#define DEFAULT_SPEED	B115200
struct termios sauvegarde;

#define B	0x08
#define HW	0x10
#define W	0x20

#define TIMEOUT	5

int init_UART(char * port, int speed) {
	struct termios configuration;
	int fd;

	if (! port) {
		DBG("\n%s: error, no port!", __FUNCTION__);
		return -1;
	}
	if ((fd = open(port, O_RDWR | O_NOCTTY | O_NDELAY )) < 0) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	};
	fcntl(fd, F_SETFL, 0);
	INFO("UART opened on %s ....\n", port);
	tcgetattr(fd, &configuration);
	INFO("serial open - speed : %08x\n", speed);
	tcgetattr(fd, &configuration);
	bzero(&configuration, sizeof(configuration));
	cfsetispeed(&configuration, speed);
	cfsetospeed(&configuration, speed);
	configuration.c_cflag |= (CLOCAL | CREAD);
	configuration.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);
	configuration.c_oflag &= ~OPOST;
	configuration.c_cc[VMIN] = 0;
	configuration.c_cc[VTIME] = 1;
	configuration.c_cflag &= ~(CSIZE | PARENB | CSTOPB);
	configuration.c_cflag |= CS8;
	configuration.c_cflag &= ~CRTSCTS;
	configuration.c_iflag &= ~(IXON | IXOFF | IXANY);

	if (tcsetattr(fd, TCSANOW, &configuration) < 0) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	}
	INFO("%s:Serial port configured.\n", __FUNCTION__);
	return fd;
}

struct command_t {
	unsigned short cmd;
	unsigned int a;
	unsigned char ds;
	unsigned int c;
	unsigned int d;
	unsigned char ft;
} __attribute__((__packed__));


int close_UART(int fd) {
	if (tcsetattr(fd, TCSANOW, &sauvegarde) < 0) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	}
	close(fd);
	return 0;
}

int get_sync(int fd) {
	struct command_t getstatus;
	unsigned int tmp;

	memset(&getstatus, 0, sizeof(getstatus));
	getstatus.cmd = 0x0505;
	CMD(getstatus);

	tmp = write(fd, &getstatus, sizeof(getstatus));
	if (tmp != sizeof(getstatus)) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	}

	return 0;;
}

int get_status(int fd) {
	struct command_t getstatus;
	unsigned char answer[4];
	unsigned int tmp;
	int timeout = 0;

	memset(&getstatus, 0, sizeof(getstatus));
	getstatus.cmd = 0x0505;
	CMD(getstatus);

	tmp = write(fd, &getstatus, sizeof(getstatus));
	if (tmp != sizeof(getstatus)) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	}
	tmp = 0;
	while (tmp < 4) {
		tmp += read(fd, answer + tmp, 1);
		if (timeout++ > TIMEOUT)
			return -1;
	}
	if (tmp != 4)
		DBG("error didn't receive 4 bytes\n");
	DATA("Status : %x %x %x %x\n", answer[0], answer[1], answer[2], answer[3]);

	return answer[0];
}

int write_memory(int fd, unsigned int a, unsigned char ds, unsigned int d) {
	struct command_t writemem;
	unsigned int answer;
	int tmp;
	int timeout = 0;

	tcflush(fd, TCIOFLUSH);
	memset(&writemem, 0, sizeof(writemem));
	writemem.cmd = 0x0202;
	writemem.a = htonl(a);
	writemem.ds = ds;
	writemem.d = htonl(d);
	CMD(writemem);

	tmp = write(fd, &writemem, sizeof(writemem));
	if (tmp != sizeof(writemem)) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	}
	tmp = 0;
	while (tmp < 4) {
		tmp += read(fd, (unsigned char *) &answer + tmp, 1);
		if (timeout++ > TIMEOUT)
			return -1;
	}
	if (tmp != 4)
		DBG("error didn't receive 4 bytes but : %i\n", tmp);
	if (answer != 0x56787856) {
		ERROR("bad answer : 0x%08x\n", answer);
		return -1;
	}
	DATA("Answer : %08x\n", answer);
	tmp = 0;
	timeout = 0;
	while (tmp < 4) {
		tmp += read(fd, (unsigned char *) &answer + tmp, 1);
		if (timeout++ > TIMEOUT)
			return -1;
	}
	if (tmp != 4)
		DBG("error didn't receive 4 bytes but : %i\n", tmp);
	if (answer != 0x128a8a12) {
		ERROR("bad answer : 0x%08x\n", answer);
		return -1;
	}
	DATA("Answer : %08x\n", answer);

	return answer;
}

int read_memory(int fd, unsigned int a, unsigned int ds, unsigned int c, void * data) {
	struct command_t writemem;
	unsigned int answer;
	int tmp;
	int timeout = 0;

	memset(&writemem, 0, sizeof(writemem));
	writemem.cmd = 0x0101;
	writemem.a = htonl(a);
	writemem.ds = ds;
	writemem.c = htonl(c);
	CMD(writemem);

	tmp = write(fd, &writemem, sizeof(writemem));
	if (tmp != sizeof(writemem)) {
		DBG("error %i - %s\n", errno, strerror(errno));
		free(data);
		return -1;
	}
	tmp = 0;
	while (tmp < 4) {
		tmp += read(fd, (unsigned char *) &answer + tmp, 1);
		if (timeout++ > TIMEOUT)
			return -1;
	}
	if (tmp != 4)
		DBG("error didn't receive 4 bytes but : %i\n", tmp);
	if (answer != 0x56787856) {
		ERROR("bad answer : 0x%08x\n", answer);
		free(data);
		return -1;
	}
	DATA("Answer : %08x\n", answer);
	tmp = 0;
	timeout = 0;
	while (tmp < (c * (ds >> 3))) {
		tmp += read(fd, data + tmp, 16);
		if (timeout++ > TIMEOUT)
			return -1;
	}
	if (tmp != c*(ds >> 3))
		DBG("error didn't receive %i bytes\n", ds*c);
	DATA("Read : ");
	for (tmp = 0; tmp < c*(ds >>3); tmp+=(ds >> 3)) {
		DATA("0x");
		switch (ds) {
			case B :
				DATA("%02x", (* (unsigned int *) (data + tmp)));
				break;
			case HW :
				DATA("%04x", (* (unsigned short *) (data + tmp)));
				break;
			case W :
				DATA("%08x", (* (unsigned int *) (data + tmp)));
				break;
			default :
				break;
			}
		DATA(" ");
	}
	DATA("\n");

	return answer;
}

int read_reg32(int fd, unsigned int a) {
	unsigned int reg;
	read_memory(fd, a, W, 1, &reg);
	return reg;
}

int read_reg16(int fd, unsigned int a) {
	unsigned short reg;
	read_memory(fd, a, HW, 1, &reg);
	return reg;
}

int read_reg8(int fd, unsigned int a) {
	unsigned char reg;
	read_memory(fd, a, B, 1, &reg);
	return reg;
}

#define SET_REG32(reg, value) \
	write_memory(fd, reg, W, value);
#define SET_REG16(reg, value) \
	write_memory(fd, reg, HW, value);
#define SET_REG8(reg, value) \
	write_memory(fd, reg, B, value);

#define GET_REG32(reg)  \
	read_reg32(fd, reg);
#define GET_REG16(reg)  \
	read_reg16(fd, reg);
#define GET_REG8(reg)  \
	read_reg8(fd, reg);

int write_file(int fd, unsigned int a, char * file) {
	struct command_t writemem;
	unsigned int answer;
	int tmp;
	struct stat status;
	FILE * bin;
	int size;
	int timeout = 0;

	tcflush(fd, TCIOFLUSH);
	if (stat(file, &status) < 0) {
		ERROR("file : %s - %i %s\n", file, errno, strerror(errno));
		return -1;
	}
	size = status.st_size;
	INFO("file size : %i\n", size);
	bin = fopen(file, "rb");
	memset(&writemem, 0, sizeof(writemem));
	writemem.cmd = 0x0404;
	writemem.a = htonl(a);
	writemem.c = htonl(size);
	writemem.ft = 0xAA;
	CMD(writemem);

	tcflush(fd, TCIOFLUSH);
	tmp = write(fd, &writemem, sizeof(writemem));
	if (tmp != sizeof(writemem)) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	}
	tmp = 0;
	while (tmp < 4) {
		tmp += read(fd, (unsigned char *) &answer + tmp, 1);
		if (timeout++ > TIMEOUT)
			return -1;
	}
	if (tmp != 4)
		DBG("error didn't receive 4 bytes but : %i\n", tmp);
	if (answer != 0x56787856) {
		ERROR("bad answer : 0x%08x\n", answer);
		return -1;
	}
	DATA("Answer : %08x\n", answer);
	tcflush(fd, TCIOFLUSH);
	tmp = 0;
	while (tmp < size) {
		char data;
		tmp += fread(&data, sizeof(char), 1, bin);
		if (write(fd, &data, 1) != 1)
			printf("Error writing file !\n");
	}
	INFO("file %s uploaded to 0x%08x\n", file, a);
	fclose(bin);
	return answer;
}

int exec_file(int fd, unsigned int a) {
	struct command_t writemem;
	unsigned int answer;
	int tmp;

	memset(&writemem, 0, sizeof(writemem));
	writemem.cmd = 0x0404;
	writemem.a = htonl(a);
	writemem.ds = 0;
	writemem.c = 4;
	writemem.d = htonl(a);
	writemem.ft = 0xAA;
	CMD(writemem);

	tmp = write(fd, &writemem, sizeof(writemem));
	if (tmp != sizeof(writemem)) {
		DBG("error %i - %s\n", errno, strerror(errno));
		return -1;
	}
	tmp = 0;
	while (tmp < 4) {
		tmp += read(fd, (unsigned char *) &answer + tmp, 1);
	}
	if (tmp != 4)
		DBG("error didn't receive 4 bytes but : %i\n", tmp);
	if (answer != 0x56787856) {
		ERROR("bad answer : 0x%08x\n", answer);
		return -1;
	}
	DATA("Answer : %08x\n", answer);
	return answer;
}

int main(int argc, char *argv[]) {
	int fd;
	unsigned int tmp;
	FILE * conf_file;
	char * line = NULL;
	size_t length = 0;
	char binfile[256];
	int load_adr; 
	int exec_adr;
	struct stat status;
	fd_set mux;
	struct timeval timeout;

	if (argc != 3) {
		printf("Usage: %s uart_device config_file.cfg\n", argv[0]);
		return 1;
	}

	conf_file = fopen(argv[2], "r");
	if (conf_file == NULL) {
		ERROR("Can't open file %s\n", argv[2]);
		return 1;
	}
	fd = init_UART(argv[1], DEFAULT_SPEED);
	if (fd < 0) {
		fclose(conf_file);
		return 1;
	}

	if (get_status(fd) < 0) {
		fclose(conf_file);
		close_UART(fd);
		setcolor(FG_COLOR,BG_COLOR);
		return 1;
	};

	if (getline(&line, &length, conf_file) != -1) {
		if (sscanf(line, "file %s load 0x%x exec 0x%x", binfile, &load_adr, &exec_adr) != 3) {
			DBG("sscan failed with line : %s\n", line);
			ERROR("Bad config file format");
			if (line)
				free(line);
			fclose(conf_file);
			close_UART(fd);
			setcolor(FG_COLOR,BG_COLOR);
			return 1;
		} else {
			DBG("file : %s @ load : %x - exec : %x\n", binfile, load_adr, exec_adr);
			if (stat(binfile, &status) < 0) {
				ERROR("Can't open file %s\n", binfile);
				if (line)
					free(line);
				fclose(conf_file);
				close_UART(fd);
				setcolor(FG_COLOR,BG_COLOR);
				return -1;
			}
		}
		if (line)
			free(line);
		line = NULL;
	} else {
		ERROR("Can't read data from config file\n");
		fclose(conf_file);
		close_UART(fd);
		setcolor(FG_COLOR,BG_COLOR);
		return 1;
	}
	while (getline(&line, &length, conf_file) != -1) {
		char type[256];
		char size[256];
		int adr; 
		int val;
		DBG("line : %s\n", line);
		if (sscanf(line, "%s %s 0x%x %x", type, size, &adr, &val) != 4) {
			DBG("sscan failed with line : %s\n", line);
		} else {
			int ret;
			DBG("@ %x - %x - %s - %s\n", adr, val, size, type);
			if ((strcmp("wr", size) == 0) | (strcmp("write32", size) == 0) | (strcmp("write", size) == 0)) {
				ret = SET_REG32(adr, val);
			} else if ((strcmp("wr16", size) == 0) | (strcmp("write16", size) == 0)) {
				ret = SET_REG16(adr, val);
			} else if ((strcmp("wr8", size) == 0) | (strcmp("write8", size) == 0)) {
				ret = SET_REG8(adr, val);
			}
			if ((strcmp("rd", size) == 0) | (strcmp("read32", size) == 0) | (strcmp("read", size) == 0)) {
				ret = GET_REG32(adr);
			} else if ((strcmp("rd16", size) == 0) | (strcmp("read16", size) == 0)) {
				ret = GET_REG16(adr);
			} else if ((strcmp("rd8", size) == 0) | (strcmp("read8", size) == 0)) {
				ret = GET_REG8(adr);
			}
			if (ret < 0) {
				fclose(conf_file);
				close_UART(fd);
				setcolor(FG_COLOR,BG_COLOR);
				return -1;
			}
		}
		if (line)
			free(line);
		line = NULL;
		length = 0;
	}
	if (line)
		free(line);

	if (write_file(fd, load_adr, binfile) < 0) {
		fclose(conf_file);
		close_UART(fd);
		setcolor(FG_COLOR,BG_COLOR);
		return -1;
	}

	/* the bootrom expects a "app_code_jump_vector" at the
	 * base address of the flash header so make him happy */
	INFO("Now executing @ 0x%x08x\n", exec_adr);
	tmp = SET_REG32(load_adr, exec_adr);
	if (tmp < 0) {
		fclose(conf_file);
		close_UART(fd);
		setcolor(FG_COLOR,BG_COLOR);
		return -1;
	}

	get_sync(fd);

	printf("%i %i\n", fd, fileno(stdin));
	while (1) {
		char out[256];
		int tmp;
		FD_ZERO(&mux);
		FD_SET(fd, &mux);
		FD_SET(0, &mux);
		timeout.tv_sec = 0;
		timeout.tv_usec = 1000;
		if ((tmp = select(FD_SETSIZE, &mux, NULL, NULL, &timeout)) < 0) {
			DBG("select error %i - %s\n", errno, strerror(errno));
		}
		if (FD_ISSET(fd, &mux)) {
			memset(out, 0, 256);
			tmp = read(fd, out, 256);
			printf("%s", out);
			fflush(stdout);
		}
		if (FD_ISSET(0, &mux)) {
			int i = 0;
			memset(out, 0, 256);
			tmp = read(0, out, 256);
			while (i < tmp)
				i += write(fd, out + i, tmp -i);
		}
	}
	close_UART(fd);
	setcolor(FG_COLOR,BG_COLOR);
}

--------------010702040507040708000209
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------010702040507040708000209--

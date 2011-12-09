Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYzIE-000156-KR
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:11:12 +0000
Date: Fri, 9 Dec 2011 13:10:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111209121041.GI27267@pengutronix.de>
References: <1323424308-7768-1-git-send-email-a.aring@phytec.de>
 <1323424308-7768-2-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323424308-7768-2-git-send-email-a.aring@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] nandtest: add nandtest command
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Fri, Dec 09, 2011 at 10:51:47AM +0100, Alexander Aring wrote:
> Add nandtest command to test nand devices
> and display ecc stats at the end of test.

Nice patch. Nand is often a 'hope for the best' case. Good to have a
test program for this.

As this command scratches every device it is given to we should
clearly state this somewhere in the help text. I think we
should also only make this command work if some additional command
line switch is given, just to prevent users from doing a quick
'Test? Cool, let's test this device' without knowing it.

> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
>  commands/Kconfig    |    7 +
>  commands/Makefile   |    1 +
>  commands/nandtest.c |  397 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 405 insertions(+), 0 deletions(-)
>  create mode 100644 commands/nandtest.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index ebc9c7f..0ca37c9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -173,6 +173,13 @@ config CMD_NAND
>  	depends on NAND
>  	prompt "nand"
>  
> +config CMD_NANDTEST
> +	tristate
> +	depends on NAND
> +	depends on PARTITION
> +	depends on NAND_ECC_HW || NAND_ECC_SOFT
> +	prompt "nandtest"
> +
>  endmenu
>  
>  menu "console                       "
> diff --git a/commands/Makefile b/commands/Makefile
> index aa013de..bbd9a88 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -39,6 +39,7 @@ obj-$(CONFIG_CMD_PRINTENV)	+= printenv.o
>  obj-$(CONFIG_CMD_SAVEENV)	+= saveenv.o
>  obj-$(CONFIG_CMD_LOADENV)	+= loadenv.o
>  obj-$(CONFIG_CMD_NAND)		+= nand.o
> +obj-$(CONFIG_CMD_NANDTEST)	+= nandtest.o
>  obj-$(CONFIG_CMD_TRUE)		+= true.o
>  obj-$(CONFIG_CMD_FALSE)		+= false.o
>  obj-$(CONFIG_CMD_VERSION)	+= version.o
> diff --git a/commands/nandtest.c b/commands/nandtest.c
> new file mode 100644
> index 0000000..298711c
> --- /dev/null
> +++ b/commands/nandtest.c
> @@ -0,0 +1,397 @@
> +/*
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + */
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <ioctl.h>
> +#include <linux/mtd/mtd-abi.h>
> +#include <fcntl.h>
> +#include <stdlib.h>
> +
> +/* Max ECC Bits that can be corrected */
> +#define MAX_ECC_BITS 8
> +
> +/*
> + * Structures for flash memory information.
> + */
> +static struct region_info_user memregion;
> +static struct mtd_info_user meminfo;
> +static struct mtd_ecc_stats oldstats, newstats;
> +
> +static int fd, seed;
> +/* Markbad option flag */
> +static int markbad;
> +
> +/* ECC-Calculation stats  */
> +static unsigned int ecc_stats[MAX_ECC_BITS];
> +static unsigned int ecc_stats_over;
> +static unsigned int ecc_failed_cnt;
> +
> +/*
> + * Implementation of pread with lseek and read.
> + */
> +static ssize_t pread(int fd, void *buf, size_t count, off_t offset)
> +{
> +	int ret;
> +
> +	/* Seek to offset */
> +	ret = lseek(fd, offset, SEEK_SET);
> +	if (ret < 0) {
> +		perror("lseek");
> +		return -1;

You should propagate the errors instead of returning -1.

> +	}
> +
> +	/* Read from flash and put it into buf  */
> +	ret = read(fd, buf, count);
> +	if (ret < 0) {
> +		perror("read");
> +		return -1;
> +	}
> +
> +	return ret;
> +}
> +
> +/*
> + * Implementation of pwrite with lseek and write.
> + */
> +static ssize_t pwrite(int fd, const void *buf, size_t count, off_t offset)
> +{
> +	int ret;
> +
> +	ret = lseek(fd, offset, SEEK_SET);
> +	if (ret < 0) {
> +		perror("lseek");
> +		return -1;
> +	}
> +
> +	ret = write(fd, buf, count);
> +	if (ret < 0) {
> +		perror("read");
> +		return -1;
> +	}
> +
> +	flush(fd);
> +	return ret;
> +}
> +
> +/*
> + * Erase and write function.
> + * Param ofs: offset on flash_device.
> + * Param data: data to write on flash.
> + * Param rbuf: pointer to allocated buffer to copy readed data.
> + */
> +static int erase_and_write(off_t ofs, unsigned char *data, unsigned char *rbuf)
> +{
> +	struct erase_info_user er;
> +	ssize_t len;
> +	int i;
> +
> +	printf("\r0x%08x: erasing... ", (unsigned)(ofs + memregion.offset));
> +	flush(stdout);

You don't need this flush.

> +
> +	er.start = ofs;
> +	er.length = meminfo.erasesize;
> +
> +	erase(fd, er.length, er.start);

Check return value?

> +
> +	printf("\r0x%08x: writing...", (unsigned)(ofs + memregion.offset));
> +	flush(stdout);
> +
> +	/* Write data to given offset */
> +	len = pwrite(fd, data, meminfo.erasesize, ofs);
> +	if (len < 0) {
> +		printf("\n");
> +		perror("write");

You already did a perror in pwrite, so this error will be printed twice.
As a rule of thumb it is mostly more useful to print the error in the
calling function rather than in the called function.

> +		if (markbad) {
> +			printf("Mark block bad at 0x%08x\n",
> +					(unsigned)(ofs + memregion.offset));
> +			ioctl(fd, MEMSETBADBLOCK, &ofs);
> +		}
> +		return -1;
> +	}
> +
> +	if (len < meminfo.erasesize) {
> +		printf("\n");
> +		printf("Short write (%zd bytes)\n", len);
> +		return -1;
> +	}
> +
> +	printf("\r0x%08x: reading...", (unsigned)(ofs + memregion.offset));
> +	flush(stdout);
> +
> +	/* Read data from offset */
> +	len = pread(fd, rbuf, meminfo.erasesize, ofs);
> +	if (len < meminfo.erasesize) {
> +		printf("\n");
> +		if (len)
> +			printf("Short read (%zd bytes)\n", len);
> +		else
> +			perror("read");
> +		return -1;
> +	}
> +
> +	if (ioctl(fd, ECCGETSTATS, &newstats)) {
> +		printf("\n");
> +		perror("ECCGETSTATS");
> +		return -1;
> +	}
> +
> +	if (newstats.corrected > oldstats.corrected) {
> +		printf("\n %d bit(s) ECC corrected at 0x%08x\n",
> +				newstats.corrected - oldstats.corrected,
> +				(unsigned)(ofs + memregion.offset));
> +		if ((newstats.corrected-oldstats.corrected) >= MAX_ECC_BITS) {
> +			/* Increment ECC stats that are over MAX_ECC_BITS */
> +			ecc_stats_over++;
> +		} else {
> +			/* Increment ECC stat value */
> +			ecc_stats[(newstats.corrected-oldstats.corrected)-1]++;
> +		}
> +		/* Set oldstats to newstats */
> +		oldstats.corrected = newstats.corrected;
> +	}
> +	if (newstats.failed > oldstats.failed) {
> +		printf("\nECC failed at 0x%08x\n",
> +				(unsigned)(ofs + memregion.offset));
> +		oldstats.failed = newstats.failed;
> +		ecc_failed_cnt++;
> +	}
> +
> +	printf("\r0x%08x: checking...", (unsigned)(ofs + memregion.offset));
> +	flush(stdout);
> +
> +	/* Check written data with readed data.
> +	 * If data aren't compare, display a detailed
> +	 * debugging information. */
> +	if (memcmp(data, rbuf, meminfo.erasesize)) {
> +		printf("\n");
> +		printf("compare failed. seed %d\n", seed);
> +		for (i = 0; i < meminfo.erasesize; i++) {
> +			if (data[i] != rbuf[i])
> +				printf("Byte 0x%x is %02x should be %02x\n",
> +				       i, rbuf[i], data[i]);
> +		}
> +		return -1;
> +	}
> +	return 0;
> +}
> +
> +/* Main program. */
> +static int do_nandtest(struct command *cmdtp, int argc, char *argv[])
> +{
> +	int opt, command = 0, length = -1;
> +	int pass;
> +	off_t flash_offset = 0;
> +	off_t test_ofs;
> +	int nr_passes = 1;
> +	int i;
> +	int ret = -1;
> +	unsigned char *wbuf, *rbuf;
> +
> +	ecc_failed_cnt = 0;
> +	ecc_stats_over = 0;
> +	markbad = 0;
> +	fd = -1;
> +
> +	memset(ecc_stats, 0, MAX_ECC_BITS);
> +
> +	while ((opt = getopt(argc, argv, "hms:p:o:l:k")) > 0) {
> +		if (command) {
> +			printf("only one command may be given\n");
> +			return 1;
> +		}
> +
> +		switch (opt) {
> +		case 'h':
> +			return COMMAND_ERROR_USAGE;

You don't need this as we have a help command. I have more than once
typed 'command -h' which does not work, but that's the way it currently
is. If we want to change this we should make a general decision not
limited to this single command.

> +		case 'm':
> +			markbad = 1;
> +			break;
> +		case 's':
> +			seed = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'p':
> +			nr_passes = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'o':
> +			flash_offset = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'l':
> +			length = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (argc == 1 || optind >= argc)
> +		return COMMAND_ERROR_USAGE;

Isn't the first check also covered by the second check?

> +
> +	printf("Open device %s\n", argv[optind]);
> +
> +	fd = open(argv[optind], O_RDWR);
> +	if (fd < 0) {
> +		perror("open");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	/* Getting flash information. */
> +
> +	if (ioctl(fd, MEMGETINFO, &meminfo)) {
> +		perror("MEMGETINFO");
> +		goto err;
> +	}
> +
> +	if (ioctl(fd, MEMGETREGIONINFO, &memregion)) {
> +		perror("MEMGETREGIONINFO");
> +		goto err;
> +	}
> +
> +	if (ioctl(fd, ECCGETSTATS, &oldstats)) {
> +		printf("\n");

unnecessary new line, also in some other places.

> +		perror("ECCGETSTATS");
> +		goto err;
> +	}
> +
> +	if (length == -1) {
> +		length = meminfo.size;
> +		length -= flash_offset;
> +	}
> +
> +	printf("Flash offset: 0x%08x\n",
> +			(unsigned)(flash_offset+memregion.offset));
> +	printf("Length: 0x%08x\n", (unsigned)length);
> +	printf("End address: 0x%08x\n",
> +			(unsigned)(flash_offset+length+memregion.offset));
> +	printf("Erasesize: 0x%08x\n", (unsigned)(meminfo.erasesize));
> +	printf("Starting nandtest...\n");
> +
> +	if (flash_offset % meminfo.erasesize) {
> +		printf("Offset 0x%08x not multiple of erase size 0x%08x\n",
> +			(unsigned)flash_offset, meminfo.erasesize);
> +		goto err;
> +	}
> +	if (length % meminfo.erasesize) {
> +		printf("Length 0x%08x not multiple of erase size 0x%08x\n",
> +			length, meminfo.erasesize);
> +		goto err;
> +	}
> +	if (length + flash_offset > meminfo.size) {
> +		printf("Length 0x%08x + offset 0x%08x exceeds "
> +				"device size 0x%08x\n",
> +			length, (unsigned)flash_offset, meminfo.size);
> +		goto err;
> +	}
> +
> +	wbuf = malloc(meminfo.erasesize * 2);
> +	if (!wbuf) {
> +		printf("Could not allocate %d bytes for buffer\n",
> +			meminfo.erasesize * 2);
> +		goto err;
> +	}
> +	rbuf = wbuf + meminfo.erasesize;
> +
> +	/* Need to reopen device to erase */
> +	ret = close(fd);
> +	if (ret < 0) {
> +		perror("close");
> +		free(wbuf);
> +		printf("Error occurred.\n");
> +		return 1;
> +	}

Why do you have to reopen here? It looks like a bug in barebox if you
have to.

> +
> +	for (pass = 0; pass < nr_passes; pass++) {
> +		/* Need to reopen device to erase */
> +		fd = open(argv[optind], O_RDWR);
> +		if (fd < 0) {
> +			perror("open");
> +			goto err2;
> +		}
> +
> +		for (test_ofs = flash_offset;
> +				test_ofs < flash_offset+length;
> +				test_ofs += meminfo.erasesize) {
> +
> +			srand(seed);
> +			seed = rand();
> +
> +			if (ioctl(fd, MEMGETBADBLOCK, (void *)test_ofs)) {
> +				printf("\rBad block at 0x%08x\n",
> +						(unsigned)(test_ofs +
> +							memregion.offset));
> +				continue;
> +			}
> +
> +			for (i = 0; i < meminfo.erasesize; i++)
> +				wbuf[i] = rand();
> +
> +			ret = erase_and_write(test_ofs, wbuf, rbuf);
> +			if (ret < 0)
> +				goto err2;
> +		}
> +
> +		printf("\nFinished pass %d successfully\n", pass+1);
> +
> +		ret = close(fd);
> +		if (ret < 0) {
> +			perror("close");
> +			free(wbuf);
> +			printf("Error occurred.\n");
> +			return 1;
> +		}
> +	}
> +
> +	printf("-------- Summary --------\n");
> +	printf("Tested blocks		: %d\n", (length/meminfo.erasesize)
> +			*nr_passes);
> +
> +	for (i = 0; i < MAX_ECC_BITS; i++)
> +		printf("ECC %d bit error(s)	: %d\n", i+1, ecc_stats[i]);
> +
> +	printf("ECC >%d bit error(s)	: %d\n", MAX_ECC_BITS, ecc_stats_over);
> +	printf("ECC corrections failed	: %d\n", ecc_failed_cnt);
> +	printf("-------------------------\n");

Generally it has proven good to put the functionality of a command into
a seperate function. This way we can easier decide to call it from other
places.


> +
> +	/* Free allocated wbuf memory */
> +	free(wbuf);
> +
> +	return 0;
> +err2:
> +	/* Free allocated wbuf memory */
> +	free(wbuf);

Please remove these comments, they contain no useful information.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TV56D-00008b-4q
 for barebox@lists.infradead.org; Sun, 04 Nov 2012 18:39:10 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 37497FFA25E
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2012 19:49:42 +0100 (CET)
Date: Sun, 4 Nov 2012 19:36:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121104183659.GC29599@game.jcrosoft.org>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH v2 1/2] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 18:55 Sun 04 Nov     , Robert Jarzmik wrote:
> The current Y-Modem implementation has some limitations:
>  - Y-Modem/G protocol is not supported
>  - Multiple files (aka. batch) transfers are not supported
>  - Transfer speed over fast lines (USB console) is slow
>  - Code is not trivial to maintain (personnal opinion)
> 
> This implementation tries to address all these points by
> introducing loady2 command.
> 
> The effects are :
>  - transfer speed for Y-Modem over USB jumps from 2kBytes/s
>    to 180kBytes/s
>  - transfer speed for Y-Modem/G jumps to 200kBytes/s
>  - multiple file transfers are possible
> 
> This command was tested on a USB console and UART 9600bps
> serial line :
>  - NAKs (and retransmissions) were tested for faulty
>    serial lines
>  - multiple file transfers were tested
>  - Y-Modem, Y-Modem/G and X-Modem transfers were tested
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> 
> ---
> Since V1:
>  - add input fifo for small fifo hardwares
> Add a FIFO so that each getc will empty the hardware
> FIFO. This is very similar to the generic console code,
> except that the getc won't block each time for 100us,
> enabling faster lines (USB) to benefit their full speed.
>  - fix CRC calculation for big endian architectures
>    Thanks a lot Antony for the many patches testing !
>  - added some documentation
>  - amended the split as Sascha recommended
> ---
>  commands/Kconfig  |    1 +
>  commands/Makefile |    2 +-
>  commands/loadxy.c |  238 +++++++++++++++++++++
>  include/xymodem.h |   25 +++
>  lib/Kconfig       |    3 +
>  lib/Makefile      |    1 +
>  lib/xymodem.c     |  591 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  7 files changed, 860 insertions(+), 1 deletion(-)
>  create mode 100644 commands/loadxy.c
>  create mode 100644 include/xymodem.h
>  create mode 100644 lib/xymodem.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index a52a01a..a7e9974 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -261,6 +261,7 @@ config CMD_LOADB
>  
>  config CMD_LOADY
>  	select CRC16
> +	select XYMODEM
>  	tristate
>  	prompt "loady"
>  
> diff --git a/commands/Makefile b/commands/Makefile
> index ff98051..44ad904 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -3,7 +3,7 @@ obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
>  obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
>  obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
>  obj-$(CONFIG_CMD_LOADB)		+= loadb.o xyzModem.o
> -obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
> +obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o loadxy.o
>  obj-$(CONFIG_CMD_LOADS)		+= loads.o
>  obj-$(CONFIG_CMD_ECHO)		+= echo.o
>  obj-$(CONFIG_CMD_MEMORY)	+= mem.o
> diff --git a/commands/loadxy.c b/commands/loadxy.c
> new file mode 100644
> index 0000000..141bd7b
> --- /dev/null
> +++ b/commands/loadxy.c
> @@ -0,0 +1,238 @@
> +/**
> + * @file
> + * @brief loady and loadx  support.
> + *
> + * Provides loadx (over X-Modem) and loady(over Y-Modem) support to download
> + * images.
> + *
> + * FileName: commands/loadxy.c
> + */
> +/*
> + * (C) Copyright 2012 Robert Jarzmik <robert.jarzmik@free.fr>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +/*
> + * Serial up- and download support
> + */
> +#include <common.h>
> +#include <command.h>
> +#include <console.h>
> +#include <xymodem.h>
> +#include <errno.h>
> +#include <getopt.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <malloc.h>
> +
> +#define DEF_FILE	"image.bin"
> +
> +/**
> + * @brief returns current used console device
> + *
> + * @return console device which is registered with CONSOLE_STDIN and
> + * CONSOLE_STDOUT
> + */
> +static struct console_device *get_current_console(void)
> +{
> +	struct console_device *cdev;
> +	/*
> +	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
> +	 * same output console
> +	 */
> +	for_each_console(cdev) {
> +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
> +			return cdev;
> +	}
> +	return NULL;
> +}
> +
> +static int console_change_speed(struct console_device *cdev, int baudrate)
> +{
> +	int current_baudrate;
> +
> +	current_baudrate =
> +		(int)simple_strtoul(dev_get_param(&cdev->class_dev,
> +						  "baudrate"), NULL, 10);
> +	if (baudrate && baudrate != current_baudrate) {
> +		printf("## Switch baudrate from %d to %d bps and press ENTER ...\n",
> +		       current_baudrate, baudrate);
> +		mdelay(50);
> +		cdev->setbrg(cdev, baudrate);
> +		mdelay(50);
> +	}
> +	return current_baudrate;
> +}
> +
> +/**
> + * @brief provide the loady(Y-Modem or Y-Modem/G) support
> + *
> + * @param argc number of arguments
> + * @param argv arguments of loady command
> + *
> + * @return success or failure
> + */
> +static int do_loady(int argc, char *argv[])
> +{
> +	int is_ymodemg = 0, rc = 0, opt, rcode = 0;
> +	int load_baudrate = 0, current_baudrate;
> +	struct console_device *cdev = NULL;
> +
> +	while ((opt = getopt(argc, argv, "b:g")) > 0) {
> +		switch (opt) {
> +		case 'b':
> +			load_baudrate = (int)simple_strtoul(optarg, NULL, 10);
> +			break;
> +		case 'g':
> +			is_ymodemg = 1;
> +			break;
> +		default:
> +			perror(argv[0]);
> +			return 1;
> +		}
> +	}
> +
> +	cdev = get_current_console();
> +	if (NULL == cdev) {
this really look wired
	if (!cdev)
> +		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
> +		return -ENODEV;
> +	}
> +
> +	current_baudrate = console_change_speed(cdev, load_baudrate);
> +	printf("## Ready for binary (ymodem) download at %d bps...\n",
> +	       load_baudrate ? load_baudrate : current_baudrate);
> +
> +	if (is_ymodemg)
> +		rc = do_load_serial_ymodemg(cdev);
> +	else
> +		rc = do_load_serial_ymodem(cdev);
> +
> +	if (rc < 0) {
> +		printf("## Binary (ymodem) download aborted (%d)\n", rc);
> +		rcode = 1;
> +	}
> +
> +	console_change_speed(cdev, current_baudrate);
> +
> +	return rcode;
> +}
> +
> +/**
> + * @brief provide the loadx(X-Modem) support
> + *
> + * @param argc number of arguments
> + * @param argv arguments of loadx command
> + *
> + * @return success or failure
> + */
> +static int do_loadx(int argc, char *argv[])
> +{
> +	ulong offset = 0;
> +	int load_baudrate = 0, current_baudrate, ofd, opt, rcode = 0;
> +	int open_mode = O_WRONLY;
> +	char *output_file = NULL;
> +	struct console_device *cdev = NULL;
> +
> +	while ((opt = getopt(argc, argv, "f:b:o:c")) > 0) {
> +		switch (opt) {
> +		case 'f':
> +			output_file = optarg;
> +			break;
> +		case 'b':
> +			load_baudrate = (int)simple_strtoul(optarg, NULL, 10);
> +			break;
> +		case 'o':
> +			offset = (int)simple_strtoul(optarg, NULL, 10);
> +			break;
> +		case 'c':
> +			open_mode |= O_CREAT;
> +			break;
> +		default:
> +			perror(argv[0]);
> +			return 1;
> +		}
> +	}
> +
> +	cdev = get_current_console();
> +	if (NULL == cdev) {
	ditto
> +		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
> +		return -ENODEV;
> +	}
> +
> +	/* Load Defaults */
> +	if (NULL == output_file)
	ditto
> +		output_file = DEF_FILE;
> +
> +	/* File should exist */
> +	ofd = open(output_file, open_mode);
> +	if (ofd < 0) {
> +		perror(argv[0]);
> +		return 3;
> +	}
> +	/* Seek to the right offset */
> +	if (offset) {
> +		int seek = lseek(ofd, offset, SEEK_SET);
> +		if (seek != offset) {
> +			close(ofd);
> +			ofd = 0;
> +			perror(argv[0]);
> +			return 4;
> +		}
> +	}
> +
> +	current_baudrate = console_change_speed(cdev, load_baudrate);
> +	printf("## Ready for binary (X-Modem) download "
> +	       "to 0x%08lX offset on %s device at %d bps...\n", offset,
> +	       output_file, load_baudrate);
> +	rcode = do_load_serial_ymodem(cdev);
> +	if (rcode < 0) {
> +		printf("## Binary (kermit) download aborted (%d)\n", rcode);
> +		rcode = 1;
> +	}
> +	console_change_speed(cdev, current_baudrate);
> +
> +	return rcode;
> +}

> +static void xy_flush(struct console_device *cdev, struct kfifo *fifo)
> +{
> +	while (cdev->tstc(cdev))
no timeout?
> +		cdev->getc(cdev);
> +	mdelay(250);
> +	while (cdev->tstc(cdev))
ditto
> +		cdev->getc(cdev);
> +	kfifo_reset(fifo);
> +}
> +

> + */
> +static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
> +	uint64_t timeout)
> +{
> +	ssize_t rc, data_len = 0;
> +	unsigned char hdr, seqs[2], crcs[2];
> +	int crc = 0, hdr_found = 0;
> +	uint64_t start = get_time_ns();
> +
> +	while (!hdr_found) {
> +		rc = xy_gets(proto->cdev, proto->fifo, &hdr, 1, timeout);
> +		xy_dbg("read 0x%x(%c) -> %d\n", hdr, hdr, rc);
> +		if (rc < 0)
> +			goto out;
> +		if (is_timeout(start, timeout))
> +			goto timeout;
> +		switch (hdr) {
> +		case SOH:
> +			data_len = 128;
> +			hdr_found = 1;
> +			proto->total_SOH++;
no capital please
> +			break;
> +		case STX:
> +			data_len = 1024;
> +			hdr_found = 1;
boolean
> +			proto->total_STX++;
> +			break;
> +		case CAN:
> +			rc = -ECONNABORTED;
> +			if (proto->total_CAN++ > MAX_CAN_BEFORE_ABORT)
> +				goto out;
> +			break;
> +		case EOT:
> +			rc = 0;
> +			blk->len = 0;
> +			goto out;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	blk->seq = 0;
> +	rc = xy_gets(proto->cdev, proto->fifo, seqs, 2, timeout);
> +	if (rc < 0)
> +		goto out;
> +	blk->seq = seqs[0];
> +	if (255 - seqs[0] != seqs[1])
> +		return -EBADMSG;
> +
> +	rc = xy_gets(proto->cdev, proto->fifo, blk->buf, data_len, timeout);
> +	if (rc < 0)
> +		goto out;
> +	blk->len = rc;
> +
> +	switch (proto->crc_mode) {
> +	case CRC_ADD8:
> +		rc = xy_gets(proto->cdev, proto->fifo, crcs, 1, timeout);
> +		crc = crcs[0];
> +		break;
> +	case CRC_CRC16:
> +		rc = xy_gets(proto->cdev, proto->fifo, crcs, 2, timeout);
> +		crc = be16_to_cpu(*(uint16_t *)crcs);
> +		break;
> +	case CRC_NONE:
> +		rc = 0;
> +		break;
> +	}
> +	if (rc < 0)
> +		goto out;
> +
> +	rc = check_crc(blk->buf, data_len, crc, proto->crc_mode);
> +	if (rc < 0)
> +		goto out;
> +	return data_len;
> +timeout:
> +	return -ETIMEDOUT;
> +out:
> +	return rc;
> +}
> +
> +static int check_blk_seq(struct xyz_ctxt *proto, struct xy_block *blk,
> +	int read_rc)
> +{
> +	if (blk->seq == ((proto->next_blk - 1) % 256))
> +		return -EALREADY;
> +	if (blk->seq != proto->next_blk)
> +		return -EILSEQ;
> +	return read_rc;
> +}
> +
> +static int parse_first_block(struct xyz_ctxt *proto, struct xy_block *blk)
> +{
> +	int filename_len;
> +	char *str_num;
> +
> +	filename_len = strlen(blk->buf);
> +	if (filename_len > blk->len)
> +		return -EINVAL;
> +	memset(proto->filename, 0, sizeof(proto->filename));
no need just add 0 at the end
> +	strncpy(proto->filename, blk->buf, filename_len);
> +	str_num = blk->buf + filename_len + 1;
> +	strsep(&str_num, " ");
> +	proto->file_len = simple_strtoul(blk->buf + filename_len + 1, NULL, 10);
> +	return 1;
> +}
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

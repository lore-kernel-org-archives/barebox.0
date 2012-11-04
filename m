Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TV4Q4-0005ow-Pn
 for barebox@lists.infradead.org; Sun, 04 Nov 2012 17:55:39 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sun,  4 Nov 2012 18:55:23 +0100
Message-Id: <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/2] commands: change Y-Modem implementation
To: plagnioj@jcrosoft.com, antonynpavlov@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

The current Y-Modem implementation has some limitations:
 - Y-Modem/G protocol is not supported
 - Multiple files (aka. batch) transfers are not supported
 - Transfer speed over fast lines (USB console) is slow
 - Code is not trivial to maintain (personnal opinion)

This implementation tries to address all these points by
introducing loady2 command.

The effects are :
 - transfer speed for Y-Modem over USB jumps from 2kBytes/s
   to 180kBytes/s
 - transfer speed for Y-Modem/G jumps to 200kBytes/s
 - multiple file transfers are possible

This command was tested on a USB console and UART 9600bps
serial line :
 - NAKs (and retransmissions) were tested for faulty
   serial lines
 - multiple file transfers were tested
 - Y-Modem, Y-Modem/G and X-Modem transfers were tested

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V1:
 - add input fifo for small fifo hardwares
Add a FIFO so that each getc will empty the hardware
FIFO. This is very similar to the generic console code,
except that the getc won't block each time for 100us,
enabling faster lines (USB) to benefit their full speed.
 - fix CRC calculation for big endian architectures
   Thanks a lot Antony for the many patches testing !
 - added some documentation
 - amended the split as Sascha recommended
---
 commands/Kconfig  |    1 +
 commands/Makefile |    2 +-
 commands/loadxy.c |  238 +++++++++++++++++++++
 include/xymodem.h |   25 +++
 lib/Kconfig       |    3 +
 lib/Makefile      |    1 +
 lib/xymodem.c     |  591 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 860 insertions(+), 1 deletion(-)
 create mode 100644 commands/loadxy.c
 create mode 100644 include/xymodem.h
 create mode 100644 lib/xymodem.c

diff --git a/commands/Kconfig b/commands/Kconfig
index a52a01a..a7e9974 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -261,6 +261,7 @@ config CMD_LOADB
 
 config CMD_LOADY
 	select CRC16
+	select XYMODEM
 	tristate
 	prompt "loady"
 
diff --git a/commands/Makefile b/commands/Makefile
index ff98051..44ad904 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -3,7 +3,7 @@ obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
 obj-$(CONFIG_CMD_LOADB)		+= loadb.o xyzModem.o
-obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
+obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o loadxy.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
diff --git a/commands/loadxy.c b/commands/loadxy.c
new file mode 100644
index 0000000..141bd7b
--- /dev/null
+++ b/commands/loadxy.c
@@ -0,0 +1,238 @@
+/**
+ * @file
+ * @brief loady and loadx  support.
+ *
+ * Provides loadx (over X-Modem) and loady(over Y-Modem) support to download
+ * images.
+ *
+ * FileName: commands/loadxy.c
+ */
+/*
+ * (C) Copyright 2012 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/*
+ * Serial up- and download support
+ */
+#include <common.h>
+#include <command.h>
+#include <console.h>
+#include <xymodem.h>
+#include <errno.h>
+#include <getopt.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <malloc.h>
+
+#define DEF_FILE	"image.bin"
+
+/**
+ * @brief returns current used console device
+ *
+ * @return console device which is registered with CONSOLE_STDIN and
+ * CONSOLE_STDOUT
+ */
+static struct console_device *get_current_console(void)
+{
+	struct console_device *cdev;
+	/*
+	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
+	 * same output console
+	 */
+	for_each_console(cdev) {
+		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
+			return cdev;
+	}
+	return NULL;
+}
+
+static int console_change_speed(struct console_device *cdev, int baudrate)
+{
+	int current_baudrate;
+
+	current_baudrate =
+		(int)simple_strtoul(dev_get_param(&cdev->class_dev,
+						  "baudrate"), NULL, 10);
+	if (baudrate && baudrate != current_baudrate) {
+		printf("## Switch baudrate from %d to %d bps and press ENTER ...\n",
+		       current_baudrate, baudrate);
+		mdelay(50);
+		cdev->setbrg(cdev, baudrate);
+		mdelay(50);
+	}
+	return current_baudrate;
+}
+
+/**
+ * @brief provide the loady(Y-Modem or Y-Modem/G) support
+ *
+ * @param argc number of arguments
+ * @param argv arguments of loady command
+ *
+ * @return success or failure
+ */
+static int do_loady(int argc, char *argv[])
+{
+	int is_ymodemg = 0, rc = 0, opt, rcode = 0;
+	int load_baudrate = 0, current_baudrate;
+	struct console_device *cdev = NULL;
+
+	while ((opt = getopt(argc, argv, "b:g")) > 0) {
+		switch (opt) {
+		case 'b':
+			load_baudrate = (int)simple_strtoul(optarg, NULL, 10);
+			break;
+		case 'g':
+			is_ymodemg = 1;
+			break;
+		default:
+			perror(argv[0]);
+			return 1;
+		}
+	}
+
+	cdev = get_current_console();
+	if (NULL == cdev) {
+		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
+		return -ENODEV;
+	}
+
+	current_baudrate = console_change_speed(cdev, load_baudrate);
+	printf("## Ready for binary (ymodem) download at %d bps...\n",
+	       load_baudrate ? load_baudrate : current_baudrate);
+
+	if (is_ymodemg)
+		rc = do_load_serial_ymodemg(cdev);
+	else
+		rc = do_load_serial_ymodem(cdev);
+
+	if (rc < 0) {
+		printf("## Binary (ymodem) download aborted (%d)\n", rc);
+		rcode = 1;
+	}
+
+	console_change_speed(cdev, current_baudrate);
+
+	return rcode;
+}
+
+/**
+ * @brief provide the loadx(X-Modem) support
+ *
+ * @param argc number of arguments
+ * @param argv arguments of loadx command
+ *
+ * @return success or failure
+ */
+static int do_loadx(int argc, char *argv[])
+{
+	ulong offset = 0;
+	int load_baudrate = 0, current_baudrate, ofd, opt, rcode = 0;
+	int open_mode = O_WRONLY;
+	char *output_file = NULL;
+	struct console_device *cdev = NULL;
+
+	while ((opt = getopt(argc, argv, "f:b:o:c")) > 0) {
+		switch (opt) {
+		case 'f':
+			output_file = optarg;
+			break;
+		case 'b':
+			load_baudrate = (int)simple_strtoul(optarg, NULL, 10);
+			break;
+		case 'o':
+			offset = (int)simple_strtoul(optarg, NULL, 10);
+			break;
+		case 'c':
+			open_mode |= O_CREAT;
+			break;
+		default:
+			perror(argv[0]);
+			return 1;
+		}
+	}
+
+	cdev = get_current_console();
+	if (NULL == cdev) {
+		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
+		return -ENODEV;
+	}
+
+	/* Load Defaults */
+	if (NULL == output_file)
+		output_file = DEF_FILE;
+
+	/* File should exist */
+	ofd = open(output_file, open_mode);
+	if (ofd < 0) {
+		perror(argv[0]);
+		return 3;
+	}
+	/* Seek to the right offset */
+	if (offset) {
+		int seek = lseek(ofd, offset, SEEK_SET);
+		if (seek != offset) {
+			close(ofd);
+			ofd = 0;
+			perror(argv[0]);
+			return 4;
+		}
+	}
+
+	current_baudrate = console_change_speed(cdev, load_baudrate);
+	printf("## Ready for binary (X-Modem) download "
+	       "to 0x%08lX offset on %s device at %d bps...\n", offset,
+	       output_file, load_baudrate);
+	rcode = do_load_serial_ymodem(cdev);
+	if (rcode < 0) {
+		printf("## Binary (kermit) download aborted (%d)\n", rcode);
+		rcode = 1;
+	}
+	console_change_speed(cdev, current_baudrate);
+
+	return rcode;
+}
+
+static const __maybe_unused char cmd_loadx_help[] =
+	"[OPTIONS]\n"
+	"  -f file   - where to download to - defaults to " DEF_FILE "\n"
+	"  -o offset - what offset to download - defaults to 0\n"
+	"  -b baud   - baudrate at which to download - defaults to "
+	"console baudrate\n"
+	"  -c        - Create file if it is not present - default disabled";
+
+#ifdef CONFIG_CMD_LOADB
+BAREBOX_CMD_START(loadx)
+	.cmd = do_loadx,
+	.usage = "Load binary file over serial line (X-Modem)",
+BAREBOX_CMD_HELP(cmd_loadx_help)
+BAREBOX_CMD_END
+#endif
+
+static const __maybe_unused char cmd_loady_help[] =
+	"[OPTIONS]\n"
+	"  -y        - use Y-Modem/G (only for lossless tty as USB)\n"
+	"  -b baud   - baudrate at which to download - defaults to "
+	"console baudrate\n";
+
+#ifdef CONFIG_CMD_LOADY
+BAREBOX_CMD_START(loady2)
+	.cmd = do_loady,
+	.usage = "Load binary file over serial line (Y-Modem or Y-Modem/G)",
+BAREBOX_CMD_HELP(cmd_loady_help)
+BAREBOX_CMD_END
+#endif
diff --git a/include/xymodem.h b/include/xymodem.h
new file mode 100644
index 0000000..917cecc
--- /dev/null
+++ b/include/xymodem.h
@@ -0,0 +1,25 @@
+/*
+ * Handles the X-Modem, Y-Modem and Y-Modem/G protocols
+ *
+ * Copyright (C) 2008 Robert Jarzmik
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _XYMODEM_
+#define _XYMODEM_
+struct xyz_ctxt;
+struct console_device;
+
+int do_load_serial_xmodem(struct console_device *cdev, int fd);
+int do_load_serial_ymodem(struct console_device *cdev);
+int do_load_serial_ymodemg(struct console_device *cdev);
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index 9882d2d..13ecab0 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -38,6 +38,9 @@ config BITREV
 config QSORT
 	bool
 
+config XYMODEM
+	bool
+
 source lib/gui/Kconfig
 
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 41e6a0f..eb0af92 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -35,3 +35,4 @@ obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
 obj-y			+= gui/
+obj-$(CONFIG_XYMODEM)	+= xymodem.o
diff --git a/lib/xymodem.c b/lib/xymodem.c
new file mode 100644
index 0000000..1469a9a
--- /dev/null
+++ b/lib/xymodem.c
@@ -0,0 +1,591 @@
+/*
+ * Handles the X-Modem, Y-Modem and Y-Modem/G protocols
+ *
+ * Copyright (C) 2008 Robert Jarzmik
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * This file provides functions to receive X-Modem or Y-Modem(/G) protocols.
+ *
+ * References:
+ *   *-Modem: http://www.techfest.com/hardware/modem/xymodem.htm
+ *            XMODEM/YMODEM PROTOCOL REFERENCE, Chuck Forsberg
+ */
+#include <common.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <crc.h>
+#include <clock.h>
+#include <console.h>
+#include <stdio.h>
+#include <string.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <kfifo.h>
+#include <linux/byteorder/generic.h>
+
+
+#define xy_dbg(fmt, args...)
+
+/* Values magic to the protocol */
+#define SOH 0x01
+#define STX 0x02
+#define EOT 0x04
+#define ACK 0x06
+#define BSP 0x08
+#define NAK 0x15
+#define CAN 0x18
+
+#define PROTO_XMODEM	0
+#define PROTO_YMODEM	1
+#define PROTO_YMODEM_G	2
+#define MAX_PROTOS	3
+
+#define CRC_NONE	0	/* No CRC checking */
+#define CRC_ADD8	1	/* Add of all data bytes */
+#define CRC_CRC16	2	/* CCCIT CRC16 */
+#define MAX_CRCS	3
+
+#define MAX_RETRIES		10
+#define MAX_RETRIES_WITH_CRC	5
+#define TIMEOUT_READ		(1 * SECOND)
+#define MAX_CAN_BEFORE_ABORT	5
+#define INPUT_FIFO_SIZE		(4 * 1024)	/* Should always be > 1029 */
+
+enum proto_state {
+	PROTO_STATE_GET_FILENAME = 0,
+	PROTO_STATE_NEGOCIATE_CRC,
+	PROTO_STATE_RECEIVE_BODY,
+	PROTO_STATE_FINISHED_FILE,
+	PROTO_STATE_FINISHED_XFER,
+};
+
+/**
+ * struct xyz_ctxt - context of a x/y modem (g) transfer
+ *
+ * @cdev: console device to support *MODEM transfer
+ * @fifo: fifo to buffer input from serial line
+ *        This is necessary for low hardware FIFOs buffers as UARTs.
+ * @mode: protocol (XMODEM, YMODEM or YMODEM/G)
+ * @crc_mode: CRC_NONE, CRC_ADD8 or CRC_CRC16
+ * @state: protocol state (as in "state machine")
+ * @buf: buffer to store the last tranfered buffer chunk
+ * @filename : filename transmitted by sender (YMODEM* only)
+ * @fd : file descriptor of the current stored file
+ * @file_len: length declared by sender (YMODEM* only)
+ * @nb_received: number of data bytes received since session open
+ *               (this doesn't count resends)
+ * @total_SOH: number of SOH frames received (128 bytes chunks)
+ * @total_STX: number of STX frames received (1024 bytes chunks)
+ * @total_CAN: nubmer of CAN frames received (cancel frames)
+ */
+struct xyz_ctxt {
+	struct console_device *cdev;
+	struct kfifo *fifo;
+	int mode;
+	int crc_mode;
+	enum proto_state state;
+	char filename[1024];
+	int fd;
+	int file_len;
+	int nb_received;
+	int next_blk;
+	int total_SOH, total_STX, total_CAN, total_retries;
+};
+
+/**
+ * struct xy_block - one unitary block of x/y modem (g) transfer
+ *
+ * @buf: data buffer
+ * @len: length of data buffer (can only be 128 or 1024)
+ * @seq: block sequence number (as in X/Y/YG MODEM protocol)
+ */
+struct xy_block {
+	unsigned char buf[1024];
+	int len;
+	int seq;
+};
+
+/*
+ * For XMODEM/YMODEM, always try to use the CRC16 versions, called also
+ * XMODEM/CRC and YMODEM.
+ * Only fallback to additive CRC (8 bits) if sender doesn't cope with CRC16.
+ */
+static const char invite_filename_hdr[MAX_PROTOS][MAX_CRCS] = {
+	{ 0, NAK, 'C' },	/* XMODEM */
+	{ 0, NAK, 'C' },	/* YMODEM */
+	{ 0, 'G', 'G' },	/* YMODEM-G */
+};
+
+static const char invite_file_body[MAX_PROTOS][MAX_CRCS] = {
+	{ 0, NAK, 'C' },	/* XMODEM */
+	{ 0, NAK, 'C' },	/* YMODEM */
+	{ 0, 'G', 'G' },	/* YMODEM-G */
+};
+
+static const char block_ack[MAX_PROTOS][MAX_CRCS] = {
+	{ 0, ACK, ACK },	/* XMODEM */
+	{ 0, ACK, ACK },	/* YMODEM */
+	{ 0, 0, 0 },		/* YMODEM-G */
+};
+
+static const char block_nack[MAX_PROTOS][MAX_CRCS] = {
+	{ 0, NAK, NAK },	/* XMODEM */
+	{ 0, NAK, NAK },	/* YMODEM */
+	{ 0, 0, 0 },		/* YMODEM-G */
+};
+
+static int input_fifo_fill(struct console_device *cdev, struct kfifo *fifo)
+{
+	while (cdev->tstc(cdev) && kfifo_len(fifo) < INPUT_FIFO_SIZE)
+		kfifo_putc(fifo, (unsigned char)(cdev->getc(cdev)));
+	return kfifo_len(fifo);
+}
+
+/*
+ * This function is optimized to :
+ * - maximize throughput (ie. read as much as is available in lower layer fifo)
+ * - minimize latencies (no delay or wait timeout if data available)
+ * - have a timeout
+ * This is why standard getc() is not used, and input_fifo_fill() exists.
+ */
+static int xy_gets(struct console_device *cdev, struct kfifo *fifo,
+		      unsigned char *buf, int len, uint64_t timeout)
+{
+	int i, rc;
+	uint64_t start = get_time_ns();
+
+	for (i = 0, rc = 0; rc >= 0 && i < len; ) {
+		if (is_timeout(start, timeout)) {
+			rc = -ETIMEDOUT;
+			continue;
+		}
+		if (input_fifo_fill(cdev, fifo))
+			kfifo_getc(fifo, &buf[i++]);
+	}
+
+	return rc < 0 ? rc : i;
+}
+
+static void xy_putc(struct console_device *cdev, unsigned char c)
+{
+	cdev->putc(cdev, c);
+}
+
+static void xy_flush(struct console_device *cdev, struct kfifo *fifo)
+{
+	while (cdev->tstc(cdev))
+		cdev->getc(cdev);
+	mdelay(250);
+	while (cdev->tstc(cdev))
+		cdev->getc(cdev);
+	kfifo_reset(fifo);
+}
+
+static int is_xmodem(struct xyz_ctxt *proto)
+{
+	return proto->mode == PROTO_XMODEM;
+}
+
+static void xy_block_ack(struct xyz_ctxt *proto)
+{
+	unsigned char c = block_ack[proto->mode][proto->crc_mode];
+
+	if (c)
+		xy_putc(proto->cdev, c);
+}
+
+static void xy_block_nack(struct xyz_ctxt *proto)
+{
+	unsigned char c = block_nack[proto->mode][proto->crc_mode];
+
+	if (c)
+		xy_putc(proto->cdev, c);
+	proto->total_retries++;
+}
+
+static int check_crc(unsigned char *buf, int len, int crc, int crc_mode)
+{
+	unsigned char crc8 = 0;
+	uint16_t crc16;
+	int i;
+
+	switch (crc_mode) {
+	case CRC_ADD8:
+		for (i = 0; i < len; i++)
+			crc8 += buf[i];
+		return crc8 == crc ? 0 : -EBADMSG;
+	case CRC_CRC16:
+		crc16 = cyg_crc16(buf, len);
+		xy_dbg("crc16: received = %x, calculated=%x\n", crc, crc16);
+		return crc16 == crc ? 0 : -EBADMSG;
+	case CRC_NONE:
+		return 0;
+	default:
+		return -EBADMSG;
+	}
+}
+
+/**
+ * xy_read_block - read a X-Modem or Y-Modem(G) block
+ * @proto: protocol control structure
+ * @blk: block read
+ * @timeout: maximal time to get data
+ *
+ * This is the pivotal function for block receptions. It attempts to receive one
+ * block, ie. one 128 bytes or one 1024 bytes block.  The received data can also
+ * be an end of transmission, or a cancel.
+ *
+ * Returns :
+ *  >0           : size of the received block
+ *  0            : last block, ie. end of transmission, ie. EOT
+ * -EBADMSG      : malformed message (ie. sequence bi-bytes are not
+ *                 complementary), or CRC check error
+ * -EILSEQ       : block sequence number error wrt previously received block
+ * -ETIMEDOUT    : block not received before timeout passed
+ * -ECONNABORTED : transfer aborted by sender, ie. CAN
+ */
+static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
+	uint64_t timeout)
+{
+	ssize_t rc, data_len = 0;
+	unsigned char hdr, seqs[2], crcs[2];
+	int crc = 0, hdr_found = 0;
+	uint64_t start = get_time_ns();
+
+	while (!hdr_found) {
+		rc = xy_gets(proto->cdev, proto->fifo, &hdr, 1, timeout);
+		xy_dbg("read 0x%x(%c) -> %d\n", hdr, hdr, rc);
+		if (rc < 0)
+			goto out;
+		if (is_timeout(start, timeout))
+			goto timeout;
+		switch (hdr) {
+		case SOH:
+			data_len = 128;
+			hdr_found = 1;
+			proto->total_SOH++;
+			break;
+		case STX:
+			data_len = 1024;
+			hdr_found = 1;
+			proto->total_STX++;
+			break;
+		case CAN:
+			rc = -ECONNABORTED;
+			if (proto->total_CAN++ > MAX_CAN_BEFORE_ABORT)
+				goto out;
+			break;
+		case EOT:
+			rc = 0;
+			blk->len = 0;
+			goto out;
+		default:
+			break;
+		}
+	}
+
+	blk->seq = 0;
+	rc = xy_gets(proto->cdev, proto->fifo, seqs, 2, timeout);
+	if (rc < 0)
+		goto out;
+	blk->seq = seqs[0];
+	if (255 - seqs[0] != seqs[1])
+		return -EBADMSG;
+
+	rc = xy_gets(proto->cdev, proto->fifo, blk->buf, data_len, timeout);
+	if (rc < 0)
+		goto out;
+	blk->len = rc;
+
+	switch (proto->crc_mode) {
+	case CRC_ADD8:
+		rc = xy_gets(proto->cdev, proto->fifo, crcs, 1, timeout);
+		crc = crcs[0];
+		break;
+	case CRC_CRC16:
+		rc = xy_gets(proto->cdev, proto->fifo, crcs, 2, timeout);
+		crc = be16_to_cpu(*(uint16_t *)crcs);
+		break;
+	case CRC_NONE:
+		rc = 0;
+		break;
+	}
+	if (rc < 0)
+		goto out;
+
+	rc = check_crc(blk->buf, data_len, crc, proto->crc_mode);
+	if (rc < 0)
+		goto out;
+	return data_len;
+timeout:
+	return -ETIMEDOUT;
+out:
+	return rc;
+}
+
+static int check_blk_seq(struct xyz_ctxt *proto, struct xy_block *blk,
+	int read_rc)
+{
+	if (blk->seq == ((proto->next_blk - 1) % 256))
+		return -EALREADY;
+	if (blk->seq != proto->next_blk)
+		return -EILSEQ;
+	return read_rc;
+}
+
+static int parse_first_block(struct xyz_ctxt *proto, struct xy_block *blk)
+{
+	int filename_len;
+	char *str_num;
+
+	filename_len = strlen(blk->buf);
+	if (filename_len > blk->len)
+		return -EINVAL;
+	memset(proto->filename, 0, sizeof(proto->filename));
+	strncpy(proto->filename, blk->buf, filename_len);
+	str_num = blk->buf + filename_len + 1;
+	strsep(&str_num, " ");
+	proto->file_len = simple_strtoul(blk->buf + filename_len + 1, NULL, 10);
+	return 1;
+}
+
+static int xy_get_file_header(struct xyz_ctxt *proto)
+{
+	struct xy_block blk;
+	int tries, rc = 0;
+
+	memset(&blk, 0, sizeof(blk));
+	proto->state = PROTO_STATE_GET_FILENAME;
+	proto->crc_mode = CRC_CRC16;
+	for (tries = 0; tries < MAX_RETRIES; tries++) {
+		xy_putc(proto->cdev,
+			   invite_filename_hdr[proto->mode][proto->crc_mode]);
+		rc = xy_read_block(proto, &blk, 3 * SECOND);
+		xy_dbg("read block returned %d\n", rc);
+		switch (rc) {
+		case -ECONNABORTED:
+			goto fail;
+		case -ETIMEDOUT:
+		case -EBADMSG:
+			if (proto->mode != PROTO_YMODEM_G)
+				xy_flush(proto->cdev, proto->fifo);
+			break;
+		case -EALREADY:
+		default:
+			proto->next_blk = 1;
+			xy_block_ack(proto);
+			proto->state = PROTO_STATE_NEGOCIATE_CRC;
+			rc = parse_first_block(proto, &blk);
+			return rc;
+		}
+
+		if (rc < 0 && tries++ >= MAX_RETRIES_WITH_CRC)
+			proto->crc_mode = CRC_ADD8;
+	}
+	rc = -ETIMEDOUT;
+fail:
+	proto->total_retries += tries;
+	return rc;
+}
+
+static int xy_await_header(struct xyz_ctxt *proto)
+{
+	int rc;
+
+	rc = xy_get_file_header(proto);
+	if (rc < 0)
+		return rc;
+	proto->state = PROTO_STATE_NEGOCIATE_CRC;
+	xy_dbg("header received, filename=%s, file length=%d\n",
+	       proto->filename, proto->file_len);
+	if (proto->filename[0])
+		proto->fd = open(proto->filename, O_WRONLY | O_CREAT);
+	else
+		proto->state = PROTO_STATE_FINISHED_XFER;
+	proto->nb_received = 0;
+	return rc;
+}
+
+static void xy_finish_file(struct xyz_ctxt *proto)
+{
+	close(proto->fd);
+	proto->fd = 0;
+	proto->state = PROTO_STATE_FINISHED_FILE;
+}
+
+static struct xyz_ctxt *xymodem_open(struct console_device *cdev,
+				     int proto_mode, int xmodem_fd)
+{
+	struct xyz_ctxt *proto;
+
+	proto = xzalloc(sizeof(struct xyz_ctxt));
+	proto->fifo = kfifo_alloc(INPUT_FIFO_SIZE);
+	proto->mode = proto_mode;
+	proto->cdev = cdev;
+	proto->crc_mode = CRC_CRC16;
+
+	if (is_xmodem(proto)) {
+		proto->fd = xmodem_fd;
+		proto->state = PROTO_STATE_NEGOCIATE_CRC;
+	} else {
+		proto->state = PROTO_STATE_GET_FILENAME;
+	}
+	xy_flush(proto->cdev, proto->fifo);
+	return proto;
+}
+
+static int xymodem_handle(struct xyz_ctxt *proto)
+{
+	int rc = 0, xfer_max, len = 0, again = 1, remain;
+	int crc_tries = 0, same_blk_retries = 0;
+	unsigned char invite;
+	struct xy_block blk;
+
+	while (again) {
+		switch (proto->state) {
+		case PROTO_STATE_GET_FILENAME:
+			crc_tries = 0;
+			rc = xy_await_header(proto);
+			if (rc < 0)
+				goto fail;
+			continue;
+		case PROTO_STATE_FINISHED_FILE:
+			if (is_xmodem(proto))
+				proto->state = PROTO_STATE_FINISHED_XFER;
+			else
+				proto->state = PROTO_STATE_GET_FILENAME;
+			xy_putc(proto->cdev, ACK);
+			continue;
+		case PROTO_STATE_FINISHED_XFER:
+			again = 0;
+			rc = 0;
+			goto out;
+		case PROTO_STATE_NEGOCIATE_CRC:
+			invite = invite_file_body[proto->mode][proto->crc_mode];
+			proto->next_blk = 1;
+			if (crc_tries++ > MAX_RETRIES_WITH_CRC)
+				proto->crc_mode = CRC_ADD8;
+			xy_putc(proto->cdev, invite);
+			/* Fall through */
+		case PROTO_STATE_RECEIVE_BODY:
+			rc = xy_read_block(proto, &blk, 3 * SECOND);
+			if (rc > 0) {
+				rc = check_blk_seq(proto, &blk, rc);
+				proto->state = PROTO_STATE_RECEIVE_BODY;
+			}
+			break;
+		}
+
+		if (proto->state != PROTO_STATE_RECEIVE_BODY)
+			continue;
+
+		switch (rc) {
+		case -ECONNABORTED:
+			goto fail;
+		case -ETIMEDOUT:
+			if (proto->mode == PROTO_YMODEM_G)
+				goto fail;
+			xy_flush(proto->cdev, proto->fifo);
+			xy_block_nack(proto);
+			break;
+		case -EBADMSG:
+		case -EILSEQ:
+			if (proto->mode == PROTO_YMODEM_G)
+				goto fail;
+			xy_flush(proto->cdev, proto->fifo);
+			xy_block_nack(proto);
+			break;
+		case -EALREADY:
+			xy_block_ack(proto);
+			break;
+		case 0:
+			xy_finish_file(proto);
+			break;
+		default:
+			remain = proto->file_len - proto->nb_received;
+			if (is_xmodem(proto))
+				xfer_max = blk.len;
+			else
+				xfer_max = min(blk.len, remain);
+			rc = write(proto->fd, blk.buf, xfer_max);
+			proto->next_blk = ((blk.seq + 1) % 256);
+			proto->nb_received += rc;
+			len += rc;
+			xy_block_ack(proto);
+			break;
+		}
+		if (rc < 0)
+			same_blk_retries++;
+		else
+			same_blk_retries = 0;
+		if (same_blk_retries > MAX_RETRIES)
+			goto fail;
+	}
+out:
+	return rc;
+fail:
+	if (proto->fd)
+		close(proto->fd);
+	return rc;
+}
+
+static void xymodem_close(struct xyz_ctxt *proto)
+{
+	xy_flush(proto->cdev, proto->fifo);
+	printf("\nxyModem - %d(SOH)/%d(STX)/%d(CAN) packets,"
+	       " %d retries\n",
+	       proto->total_SOH, proto->total_STX,
+	       proto->total_CAN, proto->total_retries);
+	kfifo_free(proto->fifo);
+}
+
+int do_load_serial_xmodem(struct console_device *cdev, int fd)
+{
+	struct xyz_ctxt *proto;
+	int rc;
+
+	proto = xymodem_open(cdev, PROTO_XMODEM, fd);
+	do {
+		rc = xymodem_handle(proto);
+	} while (rc > 0);
+	xymodem_close(proto);
+	return rc < 0 ? rc : 0;
+}
+EXPORT_SYMBOL(do_load_serial_xmodem);
+
+int do_load_serial_ymodem(struct console_device *cdev)
+{
+	struct xyz_ctxt *proto;
+	int rc;
+
+	proto = xymodem_open(cdev, PROTO_YMODEM, 0);
+	do {
+		rc = xymodem_handle(proto);
+	} while (rc > 0);
+	xymodem_close(proto);
+	return rc < 0 ? rc : 0;
+}
+EXPORT_SYMBOL(do_load_serial_ymodem);
+
+int do_load_serial_ymodemg(struct console_device *cdev)
+{
+	struct xyz_ctxt *proto;
+	int rc;
+
+	proto = xymodem_open(cdev, PROTO_YMODEM_G, 0);
+	do {
+		rc = xymodem_handle(proto);
+	} while (rc > 0);
+	xymodem_close(proto);
+	return rc < 0 ? rc : 0;
+}
+EXPORT_SYMBOL(do_load_serial_ymodemg);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

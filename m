Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvDO8-0005QA-Gk
	for barebox@lists.infradead.org; Sun, 21 Aug 2011 19:08:54 +0000
Received: by fxd20 with SMTP id 20so3814396fxd.36
	for <barebox@lists.infradead.org>; Sun, 21 Aug 2011 12:08:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 21 Aug 2011 23:08:40 +0400
Message-Id: <1313953720-31008-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC-PATCH] Fix loads command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig  |    7 +-
 commands/Makefile |    1 -
 commands/loads.c  |  295 ++++++++++++++++++++++++++++++-----------------------
 common/Makefile   |    1 +
 4 files changed, 171 insertions(+), 133 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 5c270a9..40b9cfe 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -203,16 +203,19 @@ config CMD_LOADY
 	prompt "loady"
 
 config CMD_LOADS
-	depends on BROKEN
 	tristate
 	prompt "loads"
 
 config CMD_SAVES
-	depends on BROKEN
 	tristate
 	depends on CMD_LOADS
 	prompt "saves"
 
+config LOADS_BAUD_CHANGE
+	tristate
+	depends on CMD_LOADS
+	prompt "loads/saves baud change"
+
 config CMD_MEMINFO
 	tristate
 	prompt "meminfo"
diff --git a/commands/Makefile b/commands/Makefile
index d862ea5..07e0d3a 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -5,7 +5,6 @@ obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
-obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_CMD_MTEST)		+= memtest.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
diff --git a/commands/loads.c b/commands/loads.c
index c6617a4..920faa0 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -26,31 +26,53 @@
  */
 #include <common.h>
 #include <command.h>
+#include <environment.h>
 #include <s_record.h>
 #include <net.h>
-#include <exports.h>
 #include <xyzModem.h>
 
-static ulong load_serial (ulong offset);
-static int read_record (char *buf, ulong len);
+static ulong load_serial(ulong offset);
+static int read_record(char *buf, ulong len);
 static int do_echo = 1;
 
-# if (CONFIG_COMMANDS & CFG_CMD_SAVES)
-static int save_serial (ulong offset, ulong size);
-static int write_record (char *buf);
-# endif /* CFG_CMD_SAVES */
+#ifdef CONFIG_CMD_SAVES
+static int save_serial(ulong offset, ulong size);
+static int write_record(char *buf);
+#endif /* CONFIG_CMD_SAVES */
 
-int do_load_serial(struct command *cmdtp, int argc, char *argv[])
+#ifdef CONFIG_LOADS_BAUD_CHANGE
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
+#endif
+
+static int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong addr;
 	int i;
-	char *env_echo;
+	const char *env_echo;
 	int rcode = 0;
-#ifdef	CFG_LOADS_BAUD_CHANGE
-	int load_baudrate, current_baudrate;
+#ifdef CONFIG_LOADS_BAUD_CHANGE
+	struct console_device *cdev = NULL;
 
-	load_baudrate = current_baudrate = gd->baudrate;
+	int load_baudrate = 0, current_baudrate;
 #endif
 
 	if (((env_echo = getenv("loads_echo")) != NULL) && (*env_echo == '1')) {
@@ -59,7 +81,7 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 		do_echo = 0;
 	}
 
-#ifdef	CFG_LOADS_BAUD_CHANGE
+#ifdef CONFIG_LOADS_BAUD_CHANGE
 	if (argc >= 2) {
 		offset = simple_strtoul(argv[1], NULL, 16);
 	}
@@ -70,27 +92,38 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 		if (load_baudrate == 0)
 			load_baudrate = current_baudrate;
 	}
+
+	cdev = get_current_console();
+	if (NULL == cdev) {
+		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
+		return -ENODEV;
+	}
+	current_baudrate = (int)simple_strtoul(dev_get_param(&cdev->class_dev, "baudrate"), NULL, 10);
+
+	/* Load Defaults */
+	if (load_baudrate == 0)
+		load_baudrate = current_baudrate;
+
 	if (load_baudrate != current_baudrate) {
-		printf ("## Switch baudrate to %d bps and press ENTER ...\n",
-			load_baudrate);
+		printf("## Switch baudrate to %d bps and press ENTER ...\n",
+		       load_baudrate);
 		udelay(50000);
-		gd->baudrate = load_baudrate;
-		serial_setbrg ();
+		cdev->setbrg(cdev, load_baudrate);
 		udelay(50000);
 		for (;;) {
 			if (getc() == '\r')
 				break;
 		}
 	}
-#else	/* ! CFG_LOADS_BAUD_CHANGE */
+#else	/* ! CONFIG_LOADS_BAUD_CHANGE */
 	if (argc == 2) {
 		offset = simple_strtoul(argv[1], NULL, 16);
 	}
-#endif	/* CFG_LOADS_BAUD_CHANGE */
+#endif	/* CONFIG_LOADS_BAUD_CHANGE */
 
 	printf ("## Ready for S-Record download ...\n");
 
-	addr = load_serial (offset);
+	addr = load_serial(offset);
 
 	/*
 	 * Gather any trailing characters (for instance, the ^D which
@@ -105,23 +138,21 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 	}
 
 	if (addr == ~0) {
-		printf ("## S-Record download aborted\n");
+		printf("## S-Record download aborted\n");
 		rcode = 1;
 	} else {
-		printf ("## Start Addr      = 0x%08lX\n", addr);
-		load_addr = addr;
+		printf("## Start Addr      = 0x%08lX\n", addr);
 	}
 
-#ifdef	CFG_LOADS_BAUD_CHANGE
+#ifdef CONFIG_LOADS_BAUD_CHANGE
 	if (load_baudrate != current_baudrate) {
-		printf ("## Switch baudrate to %d bps and press ESC ...\n",
-			current_baudrate);
-		udelay (50000);
-		gd->baudrate = current_baudrate;
-		serial_setbrg ();
-		udelay (50000);
+		printf("## Switch baudrate to %d bps and press ESC ...\n",
+		       current_baudrate);
+		udelay(50000);
+		cdev->setbrg(cdev, current_baudrate);
+		udelay(50000);
 		for (;;) {
-			if (getc() == 0x1B) /* ESC */
+			if (getc() == 0x1B)	/* ESC */
 				break;
 		}
 	}
@@ -130,7 +161,7 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 }
 
 static ulong
-load_serial (ulong offset)
+load_serial(ulong offset)
 {
 	char	record[SREC_MAXRECLEN + 1];	/* buffer for one S-Record	*/
 	char	binbuf[SREC_MAXBINLEN];		/* buffer for binary data	*/
@@ -145,53 +176,53 @@ load_serial (ulong offset)
 	int	line_count =  0;
 
 	while (read_record(record, SREC_MAXRECLEN + 1) >= 0) {
-		type = srec_decode (record, &binlen, &addr, binbuf);
+		type = srec_decode(record, &binlen, &addr, binbuf);
 
 		if (type < 0) {
-			return (~0);		/* Invalid S-Record		*/
+			return ~0;		/* Invalid S-Record		*/
 		}
 
 		switch (type) {
 		case SREC_DATA2:
 		case SREC_DATA3:
 		case SREC_DATA4:
-		    store_addr = addr + offset;
-		    memcpy ((char *)(store_addr), binbuf, binlen);
-		    if ((store_addr) < start_addr)
-			start_addr = store_addr;
-		    if ((store_addr + binlen - 1) > end_addr)
-			end_addr = store_addr + binlen - 1;
-		    break;
+			store_addr = addr + offset;
+			memcpy((char *)(store_addr), binbuf, binlen);
+			if ((store_addr) < start_addr)
+				start_addr = store_addr;
+			if ((store_addr + binlen - 1) > end_addr)
+				end_addr = store_addr + binlen - 1;
+		break;
 		case SREC_END2:
 		case SREC_END3:
 		case SREC_END4:
-		    udelay (10000);
-		    size = end_addr - start_addr + 1;
-		    printf ("\n"
+			udelay(10000);
+			size = end_addr - start_addr + 1;
+			printf ("\n"
 			    "## First Load Addr = 0x%08lX\n"
 			    "## Last  Load Addr = 0x%08lX\n"
 			    "## Total Size      = 0x%08lX = %ld Bytes\n",
 			    start_addr, end_addr, size, size
-		    );
-		    sprintf(buf, "%lX", size);
-		    setenv("filesize", buf);
-		    return (addr);
+			);
+			sprintf(buf, "%lX", size);
+			setenv("filesize", buf);
+			return addr;
 		case SREC_START:
-		    break;
+			break;
 		default:
-		    break;
+			break;
 		}
 		if (!do_echo) {	/* print a '.' every 100 lines */
 			if ((++line_count % 100) == 0)
-				putc ('.');
+				console_putc(CONSOLE_STDOUT, '.');
 		}
 	}
 
-	return (~0);			/* Download aborted		*/
+	return ~0;			/* Download aborted		*/
 }
 
 static int
-read_record (char *buf, ulong len)
+read_record(char *buf, ulong len)
 {
 	char *p;
 	char c;
@@ -201,52 +232,61 @@ read_record (char *buf, ulong len)
 	for (p=buf; p < buf+len; ++p) {
 		c = getc();		/* read character		*/
 		if (do_echo)
-			putc (c);	/* ... and echo it		*/
+			console_putc(CONSOLE_STDOUT, c);	/* ... and echo it		*/
 
 		switch (c) {
 		case '\r':
 		case '\n':
 			*p = '\0';
-			return (p - buf);
+			return p - buf;
 		case '\0':
 		case 0x03:			/* ^C - Control C		*/
-			return (-1);
+			return -1;
 		default:
 			*p = c;
 		}
 
+#if 0
 	    /* Check for the console hangup (if any different from serial) */
 	    if (gd->jt[XF_getc] != getc) {
 		if (ctrlc()) {
-		    return (-1);
+		    return -1;
 		}
 	    }
+#endif
 	}
 
 	/* line too long - truncate */
 	*p = '\0';
-	return (p - buf);
+	return p - buf;
 }
 
-#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
-
-int do_save_serial(struct command *cmdtp, int flag, int argc, char *argv[])
+#ifdef CONFIG_CMD_SAVES
+static int do_save_serial(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong size   = 0;
-#ifdef	CFG_LOADS_BAUD_CHANGE
-	int save_baudrate, current_baudrate;
+#ifdef CONFIG_LOADS_BAUD_CHANGE
+	struct console_device *cdev = NULL;
 
-	save_baudrate = current_baudrate = gd->baudrate;
+	int save_baudrate = 0, current_baudrate;
 #endif
 
 	if (argc >= 2) {
 		offset = simple_strtoul(argv[1], NULL, 16);
 	}
-#ifdef	CFG_LOADS_BAUD_CHANGE
+#ifdef CONFIG_LOADS_BAUD_CHANGE
 	if (argc >= 3) {
 		size = simple_strtoul(argv[2], NULL, 16);
 	}
+
+	cdev = get_current_console();
+	if (NULL == cdev) {
+		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
+		return -ENODEV;
+	}
+	current_baudrate = (int)simple_strtoul(dev_get_param(&cdev->class_dev, "baudrate"), NULL, 10);
+
 	if (argc == 4) {
 		save_baudrate = (int)simple_strtoul(argv[3], NULL, 10);
 
@@ -254,44 +294,43 @@ int do_save_serial(struct command *cmdtp, int flag, int argc, char *argv[])
 		if (save_baudrate == 0)
 			save_baudrate = current_baudrate;
 	}
+
 	if (save_baudrate != current_baudrate) {
-		printf ("## Switch baudrate to %d bps and press ENTER ...\n",
+		printf("## Switch baudrate to %d bps and press ENTER ...\n",
 			save_baudrate);
 		udelay(50000);
-		gd->baudrate = save_baudrate;
-		serial_setbrg ();
+		cdev->setbrg(cdev, save_baudrate);
 		udelay(50000);
 		for (;;) {
 			if (getc() == '\r')
 				break;
 		}
 	}
-#else	/* ! CFG_LOADS_BAUD_CHANGE */
+#else	/* ! CONFIG_LOADS_BAUD_CHANGE */
 	if (argc == 3) {
 		size = simple_strtoul(argv[2], NULL, 16);
 	}
-#endif	/* CFG_LOADS_BAUD_CHANGE */
+#endif	/* CONFIG_LOADS_BAUD_CHANGE */
 
 	printf ("## Ready for S-Record upload, press ENTER to proceed ...\n");
 	for (;;) {
 		if (getc() == '\r')
 			break;
 	}
-	if(save_serial (offset, size)) {
-		printf ("## S-Record upload aborted\n");
+	if (save_serial(offset, size)) {
+		printf("## S-Record upload aborted\n");
 	} else {
-		printf ("## S-Record upload complete\n");
+		printf("## S-Record upload complete\n");
 	}
-#ifdef	CFG_LOADS_BAUD_CHANGE
+#ifdef CONFIG_LOADS_BAUD_CHANGE
 	if (save_baudrate != current_baudrate) {
-		printf ("## Switch baudrate to %d bps and press ESC ...\n",
+		printf("## Switch baudrate to %d bps and press ESC ...\n",
 			(int)current_baudrate);
-		udelay (50000);
-		gd->baudrate = current_baudrate;
-		serial_setbrg ();
-		udelay (50000);
+		udelay(50000);
+		cdev->setbrg(cdev, current_baudrate);
+		udelay(50000);
 		for (;;) {
-			if (getc() == 0x1B) /* ESC */
+			if (getc() == 0x1B)	/* ESC */
 				break;
 		}
 	}
@@ -304,20 +343,21 @@ int do_save_serial(struct command *cmdtp, int flag, int argc, char *argv[])
 #define SREC3_END				"S70500000000FA\n"
 #define SREC_BYTES_PER_RECORD	16
 
-static int save_serial (ulong address, ulong count)
+static int save_serial(ulong address, ulong count)
 {
 	int i, c, reclen, checksum, length;
 	char *hex = "0123456789ABCDEF";
-	char	record[2*SREC_BYTES_PER_RECORD+16];	/* buffer for one S-Record	*/
-	char	data[2*SREC_BYTES_PER_RECORD+1];	/* buffer for hex data	*/
+	char record[2*SREC_BYTES_PER_RECORD+16];	/* buffer for one S-Record	*/
+	char data[2*SREC_BYTES_PER_RECORD+1];	/* buffer for hex data	*/
 
 	reclen = 0;
 	checksum  = 0;
 
-	if(write_record(SREC3_START))			/* write the header */
-		return (-1);
+	if (write_record(SREC3_START))			/* write the header */
+		return -1;
+
 	do {
-		if(count) {						/* collect hex data in the buffer  */
+		if (count) {						/* collect hex data in the buffer  */
 			c = *(volatile uchar*)(address + reclen);	/* get one byte    */
 			checksum += c;							/* accumulate checksum */
 			data[2*reclen]   = hex[(c>>4)&0x0f];
@@ -326,9 +366,10 @@ static int save_serial (ulong address, ulong count)
 			++reclen;
 			--count;
 		}
-		if(reclen == SREC_BYTES_PER_RECORD || count == 0) {
+
+		if (reclen == SREC_BYTES_PER_RECORD || count == 0) {
 			/* enough data collected for one record: dump it */
-			if(reclen) {	/* build & write a data record: */
+			if (reclen) {	/* build & write a data record: */
 				/* address + data + checksum */
 				length = 4 + reclen + 1;
 
@@ -345,76 +386,70 @@ static int save_serial (ulong address, ulong count)
 
 				/* output one record: */
 				sprintf(record, SREC3_FORMAT, length, address, data, checksum);
-				if(write_record(record))
-					return (-1);
+				if (write_record(record))
+					return -1;
 			}
 			address  += reclen;  /* increment address */
 			checksum  = 0;
 			reclen    = 0;
 		}
-	}
-	while(count);
-	if(write_record(SREC3_END))	/* write the final record */
-		return (-1);
+	} while (count);
+
+	if (write_record(SREC3_END))	/* write the final record */
+		return -1;
+
 	return(0);
 }
 
 static int
-write_record (char *buf)
+write_record(char *buf)
 {
 	char c;
 
 	while((c = *buf++))
-		putc(c);
+		console_putc(CONSOLE_STDOUT, c);
 
 	/* Check for the console hangup (if any different from serial) */
 
 	if (ctrlc()) {
-	    return (-1);
+		return -1;
 	}
-	return (0);
+	return 0;
 }
-# endif /* CFG_CMD_SAVES */
+#endif /* CONFIG_CMD_SAVES */
 
-#ifdef	CFG_LOADS_BAUD_CHANGE
-BAREBOX_CMD(
-	loads, 3, 0,	do_load_serial,
-	"loads   - load S-Record file over serial line\n",
+static const __maybe_unused char cmd_loads_help[] =
+#ifdef CONFIG_LOADS_BAUD_CHANGE
 	"[ off ] [ baud ]\n"
 	"    - load S-Record file over serial line"
-	" with offset 'off' and baudrate 'baud'\n"
-);
-
-#else	/* ! CFG_LOADS_BAUD_CHANGE */
-BAREBOX_CMD(
-	loads, 2, 0,	do_load_serial,
-	"loads   - load S-Record file over serial line\n",
+	" with offset 'off' and baudrate 'baud'\n";
+#else	/* ! CONFIG_LOADS_BAUD_CHANGE */
 	"[ off ]\n"
-	"    - load S-Record file over serial line with offset 'off'\n"
-);
-#endif	/* CFG_LOADS_BAUD_CHANGE */
+	"    - load S-Record file over serial line with offset 'off'\n";
+#endif	/* CONFIG_LOADS_BAUD_CHANGE */
+BAREBOX_CMD_START(loads)
+	.cmd		= do_load_serial,
+	.usage		= "load S-Record file over serial line",
+	BAREBOX_CMD_HELP(cmd_loads_help)
+BAREBOX_CMD_END
 
 /*
  * SAVES always requires LOADS support, but not vice versa
  */
 
-
-#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
-#ifdef	CFG_LOADS_BAUD_CHANGE
-BAREBOX_CMD(
-	saves, 4, 0,	do_save_serial,
-	"saves   - save S-Record file over serial line\n",
+#ifdef CONFIG_CMD_SAVES
+static const __maybe_unused char cmd_saves_help[] =
+#ifdef CONFIG_LOADS_BAUD_CHANGE
 	"[ off ] [size] [ baud ]\n"
 	"    - save S-Record file over serial line"
-	" with offset 'off', size 'size' and baudrate 'baud'\n"
-);
-#else	/* ! CFG_LOADS_BAUD_CHANGE */
-BAREBOX_CMD(
-	saves, 3, 0,	do_save_serial,
-	"saves   - save S-Record file over serial line\n",
+	" with offset 'off', size 'size' and baudrate 'baud'\n";
+#else	/* ! CONFIG_LOADS_BAUD_CHANGE */
 	"[ off ] [size]\n"
-	"    - save S-Record file over serial line with offset 'off' and size 'size'\n"
-);
-#endif	/* CFG_LOADS_BAUD_CHANGE */
-#endif	/* CFG_CMD_SAVES */
-
+	"    - save S-Record file over serial line with offset 'off' and size 'size'\n";
+#endif	/* CONFIG_LOADS_BAUD_CHANGE */
+BAREBOX_CMD_START(saves)
+	.cmd		= do_save_serial,
+	.usage		= "save S-Record file over serial line",
+	BAREBOX_CMD_HELP(cmd_saves_help)
+BAREBOX_CMD_END
+#endif	/* CONFIG_CMD_SAVES */
diff --git a/common/Makefile b/common/Makefile
index 9fed2ae..74946e9 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
+obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 
 obj-y += memory.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

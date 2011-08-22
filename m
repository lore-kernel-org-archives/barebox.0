Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvZVV-0003vw-Sj
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 18:46:00 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so4552946fxd.36
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 11:45:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 Aug 2011 22:45:38 +0400
Message-Id: <1314038738-32189-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1314038738-32189-1-git-send-email-antonynpavlov@gmail.com>
References: <1314038738-32189-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] commands/loads.c: fix whitespace errors & formatting
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/loads.c |  119 +++++++++++++++++++++++++++---------------------------
 1 files changed, 59 insertions(+), 60 deletions(-)

diff --git a/commands/loads.c b/commands/loads.c
index 396406c..68a44d4 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -31,13 +31,13 @@
 #include <net.h>
 #include <xyzModem.h>
 
-static ulong load_serial (ulong offset);
-static int read_record (char *buf, ulong len);
+static ulong load_serial(ulong offset);
+static int read_record(char *buf, ulong len);
 static int do_echo = 1;
 
 #ifdef CONFIG_CMD_SAVES
-static int save_serial (ulong offset, ulong size);
-static int write_record (char *buf);
+static int save_serial(ulong offset, ulong size);
+static int write_record(char *buf);
 #endif /* CONFIG_CMD_SAVES */
 
 static int do_load_serial(struct command *cmdtp, int argc, char *argv[])
@@ -60,7 +60,7 @@ static int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 
 	printf ("## Ready for S-Record download ...\n");
 
-	addr = load_serial (offset);
+	addr = load_serial(offset);
 
 	/*
 	 * Gather any trailing characters (for instance, the ^D which
@@ -75,17 +75,16 @@ static int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 	}
 
 	if (addr == ~0) {
-		printf ("## S-Record download aborted\n");
+		printf("## S-Record download aborted\n");
 		rcode = 1;
 	} else {
-		printf ("## Start Addr      = 0x%08lX\n", addr);
+		printf("## Start Addr      = 0x%08lX\n", addr);
 	}
 
 	return rcode;
 }
 
-static ulong
-load_serial (ulong offset)
+static ulong load_serial(ulong offset)
 {
 	char	record[SREC_MAXRECLEN + 1];	/* buffer for one S-Record	*/
 	char	binbuf[SREC_MAXBINLEN];		/* buffer for binary data	*/
@@ -100,41 +99,41 @@ load_serial (ulong offset)
 	int	line_count =  0;
 
 	while (read_record(record, SREC_MAXRECLEN + 1) >= 0) {
-		type = srec_decode (record, &binlen, &addr, binbuf);
+		type = srec_decode(record, &binlen, &addr, binbuf);
 
 		if (type < 0) {
-			return (~0);		/* Invalid S-Record		*/
+			return ~0;	/* Invalid S-Record		*/
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
+			printf("\n"
 			    "## First Load Addr = 0x%08lX\n"
 			    "## Last  Load Addr = 0x%08lX\n"
 			    "## Total Size      = 0x%08lX = %ld Bytes\n",
 			    start_addr, end_addr, size, size
-		    );
-		    sprintf(buf, "%lX", size);
-		    setenv("filesize", buf);
-		    return (addr);
+			    );
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
@@ -142,11 +141,10 @@ load_serial (ulong offset)
 		}
 	}
 
-	return (~0);			/* Download aborted		*/
+	return ~0;			/* Download aborted		*/
 }
 
-static int
-read_record (char *buf, ulong len)
+static int read_record(char *buf, ulong len)
 {
 	char *p;
 	char c;
@@ -162,10 +160,10 @@ read_record (char *buf, ulong len)
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
@@ -173,7 +171,7 @@ read_record (char *buf, ulong len)
 
 	/* line too long - truncate */
 	*p = '\0';
-	return (p - buf);
+	return p - buf;
 }
 
 #ifdef CONFIG_CMD_SAVES
@@ -195,10 +193,10 @@ static int do_save_serial(struct command *cmdtp, int argc, char *argv[])
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
 
 	return 0;
@@ -209,40 +207,42 @@ static int do_save_serial(struct command *cmdtp, int argc, char *argv[])
 #define SREC3_END				"S70500000000FA\n"
 #define SREC_BYTES_PER_RECORD	16
 
-static int save_serial (ulong address, ulong count)
+static int save_serial(ulong address, ulong count)
 {
 	int i, c, reclen, checksum, length;
 	char *hex = "0123456789ABCDEF";
-	char	record[2*SREC_BYTES_PER_RECORD+16];	/* buffer for one S-Record	*/
-	char	data[2*SREC_BYTES_PER_RECORD+1];	/* buffer for hex data	*/
+	char record[2*SREC_BYTES_PER_RECORD+16]; /* buffer for one S-Record */
+	char data[2*SREC_BYTES_PER_RECORD+1];	/* buffer for hex data	*/
 
 	reclen = 0;
-	checksum  = 0;
+	checksum = 0;
+
+	if (write_record(SREC3_START))	/* write the header */
+		return -1;
 
-	if(write_record(SREC3_START))			/* write the header */
-		return (-1);
 	do {
-		if(count) {						/* collect hex data in the buffer  */
+		if (count) {		/* collect hex data in the buffer  */
 			c = *(volatile uchar*)(address + reclen);	/* get one byte    */
-			checksum += c;							/* accumulate checksum */
+			checksum += c;	/* accumulate checksum */
 			data[2*reclen]   = hex[(c>>4)&0x0f];
 			data[2*reclen+1] = hex[c & 0x0f];
 			data[2*reclen+2] = '\0';
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
 
 				/* accumulate length bytes into checksum */
-				for(i = 0; i < 2; i++)
+				for (i = 0; i < 2; i++)
 					checksum += (length >> (8*i)) & 0xff;
 
 				/* accumulate address bytes into checksum: */
-				for(i = 0; i < 4; i++)
+				for (i = 0; i < 4; i++)
 					checksum += (address >> (8*i)) & 0xff;
 
 				/* make proper checksum byte: */
@@ -250,34 +250,33 @@ static int save_serial (ulong address, ulong count)
 
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
-	return(0);
+	} while (count);
+
+	if (write_record(SREC3_END))	/* write the final record */
+		return -1;
+	return 0;
 }
 
-static int
-write_record (char *buf)
+static int write_record(char *buf)
 {
 	char c;
 
-	while((c = *buf++))
+	while ((c = *buf++))
 		console_putc(CONSOLE_STDOUT, c);
 
 	/* Check for the console hangup (if any different from serial) */
 
 	if (ctrlc()) {
-	    return (-1);
+		return -1;
 	}
-	return (0);
+	return 0;
 }
 #endif /* CONFIG_CMD_SAVES */
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

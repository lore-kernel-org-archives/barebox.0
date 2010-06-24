Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003MB-4S
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:05 +0200
Message-Id: <1277372108-30332-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] tftp: Add push support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/Kconfig |    4 ++
 net/tftp.c  |  173 +++++++++++++++++++++++++++++++++++++++++++++++------------
 2 files changed, 142 insertions(+), 35 deletions(-)

diff --git a/net/Kconfig b/net/Kconfig
index ff6e455..3169d20 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -19,6 +19,10 @@ config NET_TFTP
 	bool
 	prompt "tftp support"
 
+config NET_TFTP_PUSH
+	bool
+	prompt "tftp push support"
+
 config NET_NETCONSOLE
 	bool
 	prompt "network console support"
diff --git a/net/tftp.c b/net/tftp.c
index 4b60cc8..000d0cf 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -14,6 +14,9 @@
 #include <libgen.h>
 #include <fcntl.h>
 #include <progress.h>
+#include <getopt.h>
+#include <fs.h>
+#include <linux/stat.h>
 #include <linux/err.h>
 
 #define TFTP_PORT	69		/* Well known TFTP port #		*/
@@ -38,41 +41,89 @@ static uint64_t		tftp_timer_start;
 static int		tftp_err;
 
 #define STATE_RRQ	1
-#define STATE_DATA	2
-#define STATE_OACK	3
-#define STATE_DONE	4
+#define STATE_WRQ	2
+#define STATE_RDATA	3
+#define STATE_WDATA	4
+#define STATE_OACK	5
+#define STATE_LAST	6
+#define STATE_DONE	7
 
 #define TFTP_BLOCK_SIZE		512		    /* default TFTP block size	*/
-#define TFTP_SEQUENCE_SIZE	((unsigned long)(1<<16))    /* sequence number is 16 bit */
 
 static char *tftp_filename;
 static struct net_connection *tftp_con;
-static int net_store_fd;
+static int tftp_fd;
 static int tftp_size;
 
+#ifdef CONFIG_NET_TFTP_PUSH
+static int tftp_put;
+
+static inline void do_tftp_push(int push)
+{
+	tftp_put = push;
+}
+
+#else
+
+#define tftp_put	0
+
+static inline void do_tftp_push(int push)
+{
+}
+#endif
+
 static int tftp_send(void)
 {
-	unsigned char *pkt;
 	unsigned char *xp;
 	int len = 0;
 	uint16_t *s;
-	unsigned char *packet = net_udp_get_payload(tftp_con);
+	unsigned char *pkt = net_udp_get_payload(tftp_con);
 	int ret;
-
-	pkt = packet;
+	static int last_len;
 
 	switch (tftp_state) {
 	case STATE_RRQ:
+	case STATE_WRQ:
 		xp = pkt;
 		s = (uint16_t *)pkt;
-		*s++ = htons(TFTP_RRQ);
+		if (tftp_state == STATE_RRQ)
+			*s++ = htons(TFTP_RRQ);
+		else
+			*s++ = htons(TFTP_WRQ);
 		pkt = (unsigned char *)s;
 		pkt += sprintf((unsigned char *)pkt, "%s%coctet%ctimeout%c%d",
 				tftp_filename, 0, 0, 0, TIMEOUT) + 1;
 		len = pkt - xp;
 		break;
 
-	case STATE_DATA:
+	case STATE_WDATA:
+		if (!tftp_put)
+			break;
+
+		if (tftp_last_block == tftp_block) {
+			len = last_len;
+			break;
+		}
+
+		tftp_last_block = tftp_block;
+		s = (uint16_t *)pkt;
+		*s++ = htons(TFTP_DATA);
+		*s++ = htons(tftp_block);
+		len = read(tftp_fd, s, 512);
+		if (len < 0) {
+			perror("read");
+			tftp_err = -errno;
+			tftp_state = STATE_DONE;
+			return tftp_err;
+		}
+		tftp_size += len;
+		if (len < 512)
+			tftp_state = STATE_LAST;
+		len += 4;
+		last_len = len;
+		break;
+
+	case STATE_RDATA:
 	case STATE_OACK:
 		xp = pkt;
 		s = (uint16_t *)pkt;
@@ -103,17 +154,34 @@ static void tftp_handler(char *packet, unsigned len)
 		return;
 
 	len -= 2;
-	/* warning: don't use increment (++) in ntohs() macros!! */
+
 	s = (uint16_t *)pkt;
 	proto = *s++;
 	pkt = (unsigned char *)s;
+
 	switch (ntohs(proto)) {
 	case TFTP_RRQ:
 	case TFTP_WRQ:
-	case TFTP_ACK:
-		break;
 	default:
 		break;
+	case TFTP_ACK:
+		if (!tftp_put)
+			break;
+
+		tftp_block = ntohs(*(uint16_t *)pkt);
+		if (tftp_block != tftp_last_block) {
+			debug("ack %d != %d\n", tftp_block, tftp_last_block);
+			break;
+		}
+		tftp_block++;
+		if (tftp_state == STATE_LAST) {
+			tftp_state = STATE_DONE;
+			break;
+		}
+		tftp_con->udp->uh_dport = udp->uh_sport;
+		tftp_state = STATE_WDATA;
+		tftp_send();
+		break;
 
 	case TFTP_OACK:
 		debug("Got OACK: %s %s\n", pkt, pkt + strlen(pkt) + 1);
@@ -133,7 +201,7 @@ static void tftp_handler(char *packet, unsigned len)
 
 		if (tftp_state == STATE_RRQ || tftp_state == STATE_OACK) {
 			/* first block received */
-			tftp_state = STATE_DATA;
+			tftp_state = STATE_RDATA;
 			tftp_con->udp->uh_dport = udp->uh_sport;
 			tftp_server_port = ntohs(udp->uh_sport);
 			tftp_last_block = 0;
@@ -156,7 +224,7 @@ static void tftp_handler(char *packet, unsigned len)
 		if (!(tftp_block % 10))
 			tftp_size++;
 
-		ret = write(net_store_fd, pkt + 2, len);
+		ret = write(tftp_fd, pkt + 2, len);
 		if (ret < 0) {
 			perror("write");
 			tftp_err = -errno;
@@ -190,24 +258,47 @@ static void tftp_handler(char *packet, unsigned len)
 
 static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 {
-	char *localfile;
-	char *remotefile;
+	char *localfile, *remotefile, *file1, *file2;
 	char ip1[16];
+	int opt;
+	struct stat s;
+	unsigned long flags;
 
+	do_tftp_push(0);
+	tftp_last_block = 0;
 	tftp_size = 0;
 
-	if (argc < 2)
+	while((opt = getopt(argc, argv, "p")) > 0) {
+		switch(opt) {
+		case 'p':
+			do_tftp_push(1);
+			break;
+		}
+	}
+
+	if (argc <= optind)
 		return COMMAND_ERROR_USAGE;
 
-	remotefile = argv[1];
+	file1 = argv[optind++];
 
-	if (argc == 2)
-		localfile = basename(remotefile);
+	if (argc == optind)
+		file2 = basename(file1);
 	else
-		localfile = argv[2];
+		file2 = argv[optind];
+
+	if (tftp_put) {
+		localfile = file1;
+		remotefile = file2;
+		stat(localfile, &s);
+		flags = O_RDONLY;
+	} else {
+		localfile = file2;
+		remotefile = file1;
+		flags = O_WRONLY | O_CREAT;
+	}
 
-	net_store_fd = open(localfile, O_WRONLY | O_CREAT);
-	if (net_store_fd < 0) {
+	tftp_fd = open(localfile, flags);
+	if (tftp_fd < 0) {
 		perror("open");
 		return 1;
 	}
@@ -220,15 +311,16 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 
 	tftp_filename = remotefile;
 
-	printf("TFTP from server %s; Filename: '%s'\n",
+	printf("TFTP %s server %s ('%s' -> '%s')\n",
+			tftp_put ? "to" : "from",
 			ip_to_string(net_get_serverip(), ip1),
-			tftp_filename);
+			file1, file2);
 
-	init_progression_bar(0);
+	init_progression_bar(tftp_put ? s.st_size : 0);
 
 	tftp_timer_start = get_time_ns();
-	tftp_state = STATE_RRQ;
-	tftp_block = 0;
+	tftp_state = tftp_put ? STATE_WRQ : STATE_RRQ;
+	tftp_block = 1;
 
 	tftp_err = tftp_send();
 	if (tftp_err)
@@ -248,11 +340,12 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 out_unreg:
 	net_unregister(tftp_con);
 out_close:
-	close(net_store_fd);
+	close(tftp_fd);
 
 	if (tftp_err) {
 		printf("\ntftp failed: %s\n", strerror(-tftp_err));
-		unlink(localfile);
+		if (!tftp_put)
+			unlink(localfile);
 	}
 
 	printf("\n");
@@ -261,12 +354,22 @@ out_close:
 }
 
 static const __maybe_unused char cmd_tftp_help[] =
-"Usage: tftp <file> [localfile]\n"
-"Load a file via network using BootP/TFTP protocol.\n";
+"Usage: tftp <remotefile> [localfile]\n"
+"Load a file from a TFTP server.\n"
+#ifdef CONFIG_NET_TFTP_PUSH
+"or\n"
+"       tftp -p <localfile> [remotefile]\n"
+"Upload a file to a TFTP server\n"
+#endif
+;
 
 BAREBOX_CMD_START(tftp)
 	.cmd		= do_tftpb,
-	.usage		= "Load file using tftp protocol",
+	.usage		=
+#ifdef CONFIG_NET_TFTP_PUSH
+			"(up-)"
+#endif
+			"Load file using tftp protocol",
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034s-6o
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:01 +0200
Message-Id: <1275645309-9756-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/13] implement tftp using new network stack
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/tftp.c |  253 ++++++++++++++++++++++++++++--------------------------------
 1 files changed, 119 insertions(+), 134 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index e8a8a3a..b0bc7c5 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -13,9 +13,9 @@
 #include <errno.h>
 #include <libgen.h>
 #include <fcntl.h>
-#include "tftp.h"
+#include <linux/err.h>
 
-#define WELL_KNOWN_PORT	69		/* Well known TFTP port #		*/
+#define TFTP_PORT	69		/* Well known TFTP port #		*/
 #define TIMEOUT		5		/* Seconds to timeout for a lost pkt	*/
 # define TIMEOUT_COUNT	10		/* # of timeouts before giving up  */
 					/* (for checking the image size)	*/
@@ -32,60 +32,45 @@
 #define TFTP_OACK	6
 
 
-static int	TftpServerPort;		/* The UDP port at their end		*/
-static int	TftpOurPort;		/* The UDP port at our end		*/
-static ulong	TftpBlock;		/* packet sequence number		*/
-static ulong	TftpLastBlock;		/* last packet sequence number received */
-static ulong	TftpBlockWrap;		/* count of sequence number wraparounds */
-static ulong	TftpBlockWrapOffset;	/* memory offset due to wrapping	*/
-static int	TftpState;
+static int		tftp_server_port;	/* The UDP port at their end		*/
+static unsigned int	tftp_block;		/* packet sequence number		*/
+static unsigned int	tftp_last_block;	/* last packet sequence number received */
+static unsigned int	tftp_block_wrap;	/* count of sequence number wraparounds */
+static unsigned int	tftp_block_wrap_offset;	/* memory offset due to wrapping	*/
+static int		tftp_state;
+static uint64_t		tftp_timer_start;
+static int		tftp_err;
 
 #define STATE_RRQ	1
 #define STATE_DATA	2
 #define STATE_OACK	3
+#define STATE_DONE	4
 
 #define TFTP_BLOCK_SIZE		512		    /* default TFTP block size	*/
-#define TFTP_SEQUENCE_SIZE	((ulong)(1<<16))    /* sequence number is 16 bit */
+#define TFTP_SEQUENCE_SIZE	((unsigned long)(1<<16))    /* sequence number is 16 bit */
 
 static char *tftp_filename;
-
+static struct net_connection *tftp_con;
 static int net_store_fd;
 
-static int store_block(unsigned block, uchar * src, unsigned len)
-{
-	ulong offset = block * TFTP_BLOCK_SIZE + TftpBlockWrapOffset;
-	ulong newsize = offset + len;
-	int ret;
-
-	ret = write(net_store_fd, src, len);
-	if (ret < 0)
-		return ret;
-
-	if (NetBootFileXferSize < newsize)
-		NetBootFileXferSize = newsize;
-	return 0;
-}
-
-static void TftpSend(void)
+static int tftp_send(void)
 {
-	uchar *pkt;
-	uchar *xp;
+	unsigned char *pkt;
+	unsigned char *xp;
 	int len = 0;
-	ushort *s;
+	uint16_t *s;
+	unsigned char *packet = net_udp_get_payload(tftp_con);
+	int ret;
 
-	/*
-	 *	We will always be sending some sort of packet, so
-	 *	cobble together the packet headers now.
-	 */
-	pkt = NetTxPacket + NetEthHdrSize() + IP_HDR_SIZE;
+	pkt = packet;
 
-	switch (TftpState) {
+	switch (tftp_state) {
 	case STATE_RRQ:
 		xp = pkt;
-		s = (ushort *)pkt;
+		s = (uint16_t *)pkt;
 		*s++ = htons(TFTP_RRQ);
-		pkt = (uchar *)s;
-		pkt += sprintf((uchar *)pkt, "%s%coctet%ctimeout%c%d",
+		pkt = (unsigned char *)s;
+		pkt += sprintf((unsigned char *)pkt, "%s%coctet%ctimeout%c%d",
 				tftp_filename, 0, 0, 0, TIMEOUT) + 1;
 		len = pkt - xp;
 		break;
@@ -93,44 +78,36 @@ static void TftpSend(void)
 	case STATE_DATA:
 	case STATE_OACK:
 		xp = pkt;
-		s = (ushort *)pkt;
+		s = (uint16_t *)pkt;
 		*s++ = htons(TFTP_ACK);
-		*s++ = htons(TftpBlock);
-		pkt = (uchar *)s;
+		*s++ = htons(tftp_block);
+		pkt = (unsigned char *)s;
 		len = pkt - xp;
 		break;
 	}
 
-	NetSendUDPPacket(NetServerEther, NetServerIP, TftpServerPort,
-			TftpOurPort, len);
-}
+	ret = net_udp_send(tftp_con, len);
 
-static void TftpTimeout(void)
-{
-	puts("T ");
-	NetSetTimeout(TIMEOUT * SECOND, TftpTimeout);
-	TftpSend();
+	return ret;
 }
 
-static void TftpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
+static void tftp_handler(char *packet, unsigned len)
 {
-	ushort proto;
-	ushort *s;
-
-	if (dest != TftpOurPort)
-		return;
-
-	if (TftpState != STATE_RRQ && src != TftpServerPort)
-		return;
+	uint16_t proto;
+	uint16_t *s;
+	char *pkt = net_eth_to_udp_payload(packet);
+	struct udphdr *udp = net_eth_to_udphdr(packet);
+	int ret;
 
+	len = net_eth_to_udplen(packet);
 	if (len < 2)
 		return;
 
 	len -= 2;
 	/* warning: don't use increment (++) in ntohs() macros!! */
-	s = (ushort *)pkt;
+	s = (uint16_t *)pkt;
 	proto = *s++;
-	pkt = (uchar *)s;
+	pkt = (unsigned char *)s;
 	switch (ntohs(proto)) {
 	case TFTP_RRQ:
 	case TFTP_WRQ:
@@ -140,16 +117,17 @@ static void TftpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
 		break;
 
 	case TFTP_OACK:
-		debug("Got OACK: %s %s\n", pkt, pkt+strlen(pkt)+1);
-		TftpState = STATE_OACK;
-		TftpServerPort = src;
-		TftpSend(); /* Send ACK */
+		debug("Got OACK: %s %s\n", pkt, pkt + strlen(pkt) + 1);
+		tftp_state = STATE_OACK;
+		tftp_server_port = ntohs(udp->uh_sport);
+		tftp_con->udp->uh_dport = udp->uh_sport;
+		tftp_send(); /* Send ACK */
 		break;
 	case TFTP_DATA:
 		if (len < 2)
 			return;
 		len -= 2;
-		TftpBlock = ntohs(*(ushort *)pkt);
+		tftp_block = ntohs(*(uint16_t *)pkt);
 
 		/*
 		 * RFC1350 specifies that the first data packet will
@@ -157,49 +135,50 @@ static void TftpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
 		 * number of 0 this means that there was a wrap
 		 * around of the (16 bit) counter.
 		 */
-		if (TftpBlock == 0) {
-			TftpBlockWrap++;
-			TftpBlockWrapOffset += TFTP_BLOCK_SIZE * TFTP_SEQUENCE_SIZE;
-			printf ("\n\t %lu MB received\n\t ", TftpBlockWrapOffset>>20);
+		if (tftp_block == 0) {
+			tftp_block_wrap++;
+			tftp_block_wrap_offset += TFTP_BLOCK_SIZE * TFTP_SEQUENCE_SIZE;
 		} else {
-			if (((TftpBlock - 1) % 10) == 0) {
+			if (((tftp_block - 1) % 10) == 0) {
 				putchar('#');
-			} else if ((TftpBlock % (10 * HASHES_PER_LINE)) == 0) {
+			} else if ((tftp_block % (10 * HASHES_PER_LINE)) == 0) {
 				puts("\n\t ");
 			}
 		}
 
-		if (TftpState == STATE_RRQ)
+		if (tftp_state == STATE_RRQ)
 			debug("Server did not acknowledge timeout option!\n");
 
-		if (TftpState == STATE_RRQ || TftpState == STATE_OACK) {
+		if (tftp_state == STATE_RRQ || tftp_state == STATE_OACK) {
 			/* first block received */
-			TftpState = STATE_DATA;
-			TftpServerPort = src;
-			TftpLastBlock = 0;
-			TftpBlockWrap = 0;
-			TftpBlockWrapOffset = 0;
-
-			if (TftpBlock != 1) {	/* Assertion */
-				printf("\nTFTP error: "
-					"First block is not block 1 (%ld)\n"
-					"Starting again\n\n",
-					TftpBlock);
-				NetState = NETLOOP_FAIL;
+			tftp_state = STATE_DATA;
+			tftp_con->udp->uh_dport = udp->uh_sport;
+			tftp_server_port = ntohs(udp->uh_sport);
+			tftp_last_block = 0;
+			tftp_block_wrap = 0;
+			tftp_block_wrap_offset = 0;
+
+			if (tftp_block != 1) {	/* Assertion */
+				printf("error: First block is not block 1 (%ld)\n",
+					tftp_block);
+				tftp_err = -EINVAL;
+				tftp_state = STATE_DONE;
 				break;
 			}
 		}
 
-		if (TftpBlock == TftpLastBlock)
+		if (tftp_block == tftp_last_block)
 			/* Same block again; ignore it. */
 			break;
 
-		TftpLastBlock = TftpBlock;
-		NetSetTimeout(TIMEOUT * SECOND, TftpTimeout);
+		tftp_last_block = tftp_block;
+		tftp_timer_start = get_time_ns();
 
-		if (store_block(TftpBlock - 1, pkt + 2, len) < 0) {
+		ret = write(net_store_fd, pkt + 2, len);
+		if (ret < 0) {
 			perror("write");
-			NetState = NETLOOP_FAIL;
+			tftp_err = -errno;
+			tftp_state = STATE_DONE;
 			return;
 		}
 
@@ -207,58 +186,51 @@ static void TftpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
 		 *	Acknowledge the block just received, which will prompt
 		 *	the server for the next one.
 		 */
-		TftpSend();
-
-		if (len < TFTP_BLOCK_SIZE) {
-			/*
-			 *	We received the whole thing.  Try to
-			 *	run it.
-			 */
-			puts("\ndone\n");
-			NetState = NETLOOP_SUCCESS;
-		}
+		tftp_send();
+
+		if (len < TFTP_BLOCK_SIZE)
+			tftp_state = STATE_DONE;
+
 		break;
 
 	case TFTP_ERROR:
-		printf("\nTFTP error: '%s' (%d)\n",
-					pkt + 2, ntohs(*(ushort *)pkt));
-		NetState = NETLOOP_FAIL;
+		debug("\nTFTP error: '%s' (%d)\n",
+					pkt + 2, ntohs(*(uint16_t *)pkt));
+		switch (ntohs(*(uint16_t *)pkt)) {
+		case 1: tftp_err = -ENOENT; break;
+		case 2: tftp_err = -EACCES; break;
+		default: tftp_err = -EINVAL; break;
+		}
+		tftp_state = STATE_DONE;
 		break;
 	}
 }
 
-void TftpStart(char *filename)
+static int tftp_start(char *filename)
 {
-	char ip1[16], ip2[16];
+	char ip1[16];
 
 	tftp_filename = filename;
 
-	printf("TFTP from server %s; our IP address is %s\n"
-			"\nFilename '%s'.\nLoading: *\b",
-			ip_to_string(NetServerIP, ip1),
-			ip_to_string(NetOurIP, ip2),
+	printf("TFTP from server %s; Filename: '%s'\nLoading: ",
+			ip_to_string(net_get_serverip(), ip1),
 			tftp_filename);
 
-	NetSetTimeout(TIMEOUT * SECOND, TftpTimeout);
-	NetSetHandler(TftpHandler);
+	tftp_timer_start = get_time_ns();
+	tftp_state = STATE_RRQ;
+	tftp_block = 0;
 
-	TftpServerPort = WELL_KNOWN_PORT;
-	TftpState = STATE_RRQ;
-	/* Use a pseudo-random port */
-	TftpOurPort = 1024 + ((unsigned int)get_time_ns() % 3072);
-	TftpBlock = 0;
+	tftp_con = net_udp_new(net_get_serverip(), TFTP_PORT, tftp_handler);
+	if (IS_ERR(tftp_con))
+		return PTR_ERR(tftp_con);
 
-	/* zero out server ether in case the server ip has changed */
-	memset(NetServerEther, 0, 6);
-
-	TftpSend();
+	return tftp_send();
 }
 
 static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 {
-	int   rcode = 0;
-	char  *localfile;
-	char  *remotefile;
+	char *localfile;
+	char *remotefile;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -276,22 +248,35 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	if (NetLoopInit(TFTP) < 0)
+	tftp_err = tftp_start(remotefile);
+	if (tftp_err)
 		goto out;
 
-	TftpStart(remotefile);
-
-	if (NetLoop() < 0) {
-		rcode = 1;
-		goto out;
+	while (tftp_state != STATE_DONE) {
+		if (ctrlc()) {
+			tftp_err = -EINTR;
+			break;
+		}
+		net_poll();
+		if (is_timeout(tftp_timer_start, SECOND)) {
+			tftp_timer_start = get_time_ns();
+			printf("T ");
+			tftp_send();
+		}
 	}
 
-	/* NetLoop ok, update environment */
-	netboot_update_env();
+	net_unregister(tftp_con);
 
-out:
 	close(net_store_fd);
-	return rcode;
+out:
+	if (tftp_err) {
+		printf("\ntftp failed: %s\n", strerror(-tftp_err));
+		unlink(localfile);
+	}
+
+	printf("\n");
+
+	return tftp_err == 0 ? 0 : 1;
 }
 
 static const __maybe_unused char cmd_tftp_help[] =
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

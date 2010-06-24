Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003M8-4e
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:04 +0200
Message-Id: <1277372108-30332-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] tftp: use generic progression bar
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/tftp.c |   34 +++++++++++++---------------------
 1 files changed, 13 insertions(+), 21 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index 338359b..4b60cc8 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -13,13 +13,11 @@
 #include <errno.h>
 #include <libgen.h>
 #include <fcntl.h>
+#include <progress.h>
 #include <linux/err.h>
 
 #define TFTP_PORT	69		/* Well known TFTP port #		*/
 #define TIMEOUT		5		/* Seconds to timeout for a lost pkt	*/
-# define TIMEOUT_COUNT	10		/* # of timeouts before giving up  */
-					/* (for checking the image size)	*/
-#define HASHES_PER_LINE	65		/* Number of "loading" hashes per line	*/
 
 /*
  *	TFTP operations.
@@ -50,6 +48,7 @@ static int		tftp_err;
 static char *tftp_filename;
 static struct net_connection *tftp_con;
 static int net_store_fd;
+static int tftp_size;
 
 static int tftp_send(void)
 {
@@ -84,6 +83,8 @@ static int tftp_send(void)
 		break;
 	}
 
+	tftp_timer_start = get_time_ns();
+	show_progress(tftp_size);
 	ret = net_udp_send(tftp_con, len);
 
 	return ret;
@@ -127,20 +128,6 @@ static void tftp_handler(char *packet, unsigned len)
 		len -= 2;
 		tftp_block = ntohs(*(uint16_t *)pkt);
 
-		/*
-		 * RFC1350 specifies that the first data packet will
-		 * have sequence number 1. If we receive a sequence
-		 * number of 0 this means that there was a wrap
-		 * around of the (16 bit) counter.
-		 */
-		if (tftp_block) {
-			if (((tftp_block - 1) % 10) == 0) {
-				putchar('#');
-			} else if ((tftp_block % (10 * HASHES_PER_LINE)) == 0) {
-				puts("\n\t ");
-			}
-		}
-
 		if (tftp_state == STATE_RRQ)
 			debug("Server did not acknowledge timeout option!\n");
 
@@ -165,7 +152,9 @@ static void tftp_handler(char *packet, unsigned len)
 			break;
 
 		tftp_last_block = tftp_block;
-		tftp_timer_start = get_time_ns();
+
+		if (!(tftp_block % 10))
+			tftp_size++;
 
 		ret = write(net_store_fd, pkt + 2, len);
 		if (ret < 0) {
@@ -205,6 +194,8 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 	char *remotefile;
 	char ip1[16];
 
+	tftp_size = 0;
+
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
@@ -229,10 +220,12 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 
 	tftp_filename = remotefile;
 
-	printf("TFTP from server %s; Filename: '%s'\nLoading: ",
+	printf("TFTP from server %s; Filename: '%s'\n",
 			ip_to_string(net_get_serverip(), ip1),
 			tftp_filename);
 
+	init_progression_bar(0);
+
 	tftp_timer_start = get_time_ns();
 	tftp_state = STATE_RRQ;
 	tftp_block = 0;
@@ -248,8 +241,7 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 		}
 		net_poll();
 		if (is_timeout(tftp_timer_start, SECOND)) {
-			tftp_timer_start = get_time_ns();
-			printf("T ");
+			show_progress(-1);
 			tftp_send();
 		}
 	}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO4Kh-0005mP-KV
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 07:43:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 09:43:42 +0200
Message-Id: <1276501424-3224-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276501424-3224-1-git-send-email-s.hauer@pengutronix.de>
References: <1276501424-3224-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] tftp: do not forget to close the file in error case
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/tftp.c |   48 ++++++++++++++++++++++--------------------------
 1 files changed, 22 insertions(+), 26 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index b0bc7c5..38d16bc 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -206,31 +206,11 @@ static void tftp_handler(char *packet, unsigned len)
 	}
 }
 
-static int tftp_start(char *filename)
-{
-	char ip1[16];
-
-	tftp_filename = filename;
-
-	printf("TFTP from server %s; Filename: '%s'\nLoading: ",
-			ip_to_string(net_get_serverip(), ip1),
-			tftp_filename);
-
-	tftp_timer_start = get_time_ns();
-	tftp_state = STATE_RRQ;
-	tftp_block = 0;
-
-	tftp_con = net_udp_new(net_get_serverip(), TFTP_PORT, tftp_handler);
-	if (IS_ERR(tftp_con))
-		return PTR_ERR(tftp_con);
-
-	return tftp_send();
-}
-
 static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 {
 	char *localfile;
 	char *remotefile;
+	char ip1[16];
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -248,9 +228,25 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	tftp_err = tftp_start(remotefile);
+	tftp_con = net_udp_new(net_get_serverip(), TFTP_PORT, tftp_handler);
+	if (IS_ERR(tftp_con)) {
+		tftp_err = PTR_ERR(tftp_con);
+		goto out_close;
+	}
+
+	tftp_filename = remotefile;
+
+	printf("TFTP from server %s; Filename: '%s'\nLoading: ",
+			ip_to_string(net_get_serverip(), ip1),
+			tftp_filename);
+
+	tftp_timer_start = get_time_ns();
+	tftp_state = STATE_RRQ;
+	tftp_block = 0;
+
+	tftp_err = tftp_send();
 	if (tftp_err)
-		goto out;
+		goto out_unreg;
 
 	while (tftp_state != STATE_DONE) {
 		if (ctrlc()) {
@@ -264,11 +260,11 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 			tftp_send();
 		}
 	}
-
+out_unreg:
 	net_unregister(tftp_con);
-
+out_close:
 	close(net_store_fd);
-out:
+
 	if (tftp_err) {
 		printf("\ntftp failed: %s\n", strerror(-tftp_err));
 		unlink(localfile);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

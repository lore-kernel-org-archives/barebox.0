Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFSha-0003hi-LI
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 16:04:56 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  4 Apr 2012 18:04:43 +0200
Message-Id: <1333555484-32635-6-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
References: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 5/6] net: tftp: do not retry endlessly
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/tftp.c |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index 243ad0a..fc33c94 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -39,6 +39,7 @@ static unsigned int	tftp_last_block;	/* last packet sequence number received */
 static int		tftp_state;
 static uint64_t		tftp_timer_start;
 static int		tftp_err;
+static unsigned		tftp_retries;
 
 #define STATE_RRQ	1
 #define STATE_WRQ	2
@@ -106,6 +107,7 @@ static int tftp_send(void)
 		}
 
 		tftp_last_block = tftp_block;
+		tftp_retries = 0;
 		s = (uint16_t *)pkt;
 		*s++ = htons(TFTP_DATA);
 		*s++ = htons(tftp_block);
@@ -231,6 +233,7 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 			break;
 
 		tftp_last_block = tftp_block;
+		tftp_retries = 0;
 
 		if (!(tftp_block % 10))
 			tftp_size++;
@@ -278,6 +281,7 @@ static int do_tftpb(int argc, char *argv[])
 	do_tftp_push(0);
 	tftp_last_block = 0;
 	tftp_size = 0;
+	tftp_retries = 0;
 
 	while((opt = getopt(argc, argv, "p")) > 0) {
 		switch(opt) {
@@ -348,6 +352,12 @@ static int do_tftpb(int argc, char *argv[])
 			tftp_err = tftp_send();
 			if (tftp_err)
 				goto out_unreg;
+			tftp_retries++;
+		}
+
+		if (tftp_retries > PKT_NUM_RETRIES) {
+			tftp_err = -ETIMEDOUT;
+			break;
 		}
 	}
 out_unreg:
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

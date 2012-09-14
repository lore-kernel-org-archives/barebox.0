Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQgo-0006Bk-SR
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:51:51 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Fri, 14 Sep 2012 09:50:17 +0200
Message-Id: <1347609017-31898-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] net: tftp: timeout only after a proper amount of time
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Currently, the timeout when waiting for packages is smaller than the
timeout communicated to the TFTP server for retransmitting. Make sure we
wait at least for two retransmissions before giving up.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/tftp.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/tftp.c b/net/tftp.c
index ca12638..053b8f3 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -354,7 +354,8 @@ static int do_tftpb(int argc, char *argv[])
 			tftp_retries++;
 		}
 
-		if (tftp_retries > PKT_NUM_RETRIES) {
+		/* Wait for two TIMEOUT periods and add some */
+		if (tftp_retries > 2 * TIMEOUT + 1) {
 			tftp_err = -ETIMEDOUT;
 			break;
 		}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

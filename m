Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sil1C-0001YG-V8
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 11:30:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 24 Jun 2012 13:30:11 +0200
Message-Id: <1340537411-22868-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs tftp: Fix short file transfers
To: barebox@lists.infradead.org

With files smaller than the tftp block size the whole transfer is done
in tftp_do_open already. In this case we are in STATE_DONE, but there
is no error. Set priv->err to 0 and check for it to be able to transfer
small files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index e8a209e..6586270 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -336,6 +336,7 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 
 		if (len < priv->blocksize) {
 			tftp_send(priv);
+			priv->err = 0;
 			priv->state = STATE_DONE;
 		}
 
@@ -423,7 +424,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 			goto out2;
 	}
 
-	if (priv->state == STATE_DONE) {
+	if (priv->state == STATE_DONE && priv->err) {
 		ret = priv->err;
 		goto out2;
 	}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwxMn-0005BV-Vb
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 16:03:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 17:03:25 +0100
Message-Id: <1358697805-28117-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] tftp: reset timer on progress
To: barebox@lists.infradead.org

When during tftp receive operation a ACK packet can't successfully be sent
the timer was resetted directly after send resulting in a deadlock.

This patch changes the timer reset operation in a way that it is only resetted
when the actually is progress, namely in the TFTP_ACK/TFTP_DATA pathes in the
tftp handler.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/tftp.c |   21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 98cbb37..4d32b0d 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -246,6 +246,11 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 	}
 }
 
+static void tftp_timer_reset(struct file_priv *priv)
+{
+	priv->progress_timeout = priv->resend_timeout = get_time_ns();
+}
+
 static void tftp_handler(void *ctx, char *packet, unsigned len)
 {
 	struct file_priv *priv = ctx;
@@ -282,6 +287,9 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 		}
 
 		priv->block++;
+
+		tftp_timer_reset(priv);
+
 		if (priv->state == STATE_LAST) {
 			priv->state = STATE_DONE;
 			break;
@@ -335,6 +343,8 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 
 		priv->last_block = priv->block;
 
+		tftp_timer_reset(priv);
+
 		kfifo_put(priv->fifo, pkt + 2, len);
 
 		if (len < priv->blocksize) {
@@ -364,11 +374,6 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 	}
 }
 
-static void tftp_timer_reset(struct file_priv *priv)
-{
-	priv->progress_timeout = priv->resend_timeout = get_time_ns();
-}
-
 static struct file_priv *tftp_do_open(struct device_d *dev,
 		int accmode, const char *filename)
 {
@@ -549,8 +554,6 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 
 	debug("%s %d\n", __func__, insize);
 
-	tftp_timer_reset(priv);
-
 	while (insize) {
 		now = kfifo_get(priv->fifo, buf, insize);
 		if (priv->state == STATE_DONE)
@@ -561,10 +564,8 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 			insize -= now;
 		}
 
-		if (TFTP_FIFO_SIZE - kfifo_len(priv->fifo) >= priv->blocksize) {
+		if (TFTP_FIFO_SIZE - kfifo_len(priv->fifo) >= priv->blocksize)
 			tftp_send(priv);
-			tftp_timer_reset(priv);
-		}
 
 		ret = tftp_poll(priv);
 		if (ret == TFTP_ERR_RESEND)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

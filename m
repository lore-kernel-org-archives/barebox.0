Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQvsy-0005Ap-0t
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 08:00:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Oct 2012 10:00:08 +0200
Message-Id: <1351065609-22101-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351065609-22101-1-git-send-email-s.hauer@pengutronix.de>
References: <1351065609-22101-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fs tftp: Only request a block once
To: barebox@lists.infradead.org

tftp_send is called often. Each time, when in STATE_RDATA, a packet
is requested from the tftp server, even if we requested the same packet
already.
Stop this by tracking which packet we requested.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/tftp.c b/fs/tftp.c
index ae57f95..d89272e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -80,6 +80,7 @@ struct file_priv {
 	struct kfifo *fifo;
 	void *buf;
 	int blocksize;
+	int block_requested;
 };
 
 struct tftp_priv {
@@ -152,11 +153,14 @@ static int tftp_send(struct file_priv *priv)
 		break;
 
 	case STATE_RDATA:
+		if (priv->block == priv->block_requested)
+			return 0;
 	case STATE_OACK:
 		xp = pkt;
 		s = (uint16_t *)pkt;
 		*s++ = htons(TFTP_ACK);
 		*s++ = htons(priv->block);
+		priv->block_requested = priv->block;
 		pkt = (unsigned char *)s;
 		len = pkt - xp;
 		break;
@@ -199,6 +203,7 @@ static int tftp_poll(struct file_priv *priv)
 	if (is_timeout(priv->resend_timeout, TFTP_RESEND_TIMEOUT)) {
 		printf("T ");
 		priv->resend_timeout = get_time_ns();
+		priv->block_requested = -1;
 		return TFTP_ERR_RESEND;
 	}
 
@@ -392,6 +397,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	priv->err = -EINVAL;
 	priv->filename = filename;
 	priv->blocksize = TFTP_BLOCK_SIZE;
+	priv->block_requested = -1;
 
 	priv->fifo = kfifo_alloc(4096);
 	if (!priv->fifo) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

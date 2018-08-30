Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvKSd-0000GF-IB
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 10:46:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Aug 2018 12:45:24 +0200
Message-Id: <20180830104527.4057-3-s.hauer@pengutronix.de>
In-Reply-To: <20180830104527.4057-1-s.hauer@pengutronix.de>
References: <20180830104527.4057-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] fs: tftp: fix memory hole
To: Barebox List <barebox@lists.infradead.org>

dpath() returns a pointer to an allocated string, so we have to free it.
Put the pointer into our file private data and free it on close time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 025edbfb86..bcb95bc1db 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -79,7 +79,7 @@ struct file_priv {
 	uint16_t last_block;
 	int state;
 	int err;
-	const char *filename;
+	char *filename;
 	int filesize;
 	uint64_t resend_timeout;
 	uint64_t progress_timeout;
@@ -139,7 +139,7 @@ static int tftp_send(struct file_priv *priv)
 				"%d%c"
 				"blksize%c"
 				"1432",
-				priv->filename, 0,
+				priv->filename + 1, 0,
 				0,
 				0,
 				TIMEOUT, 0,
@@ -374,16 +374,15 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 }
 
 static struct file_priv *tftp_do_open(struct device_d *dev,
-		int accmode, const char *filename)
+		int accmode, struct dentry *dentry)
 {
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct file_priv *priv;
 	struct tftp_priv *tpriv = dev->priv;
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
 
-	filename++;
-
 	switch (accmode & O_ACCMODE) {
 	case O_RDONLY:
 		priv->push = 0;
@@ -408,7 +407,7 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 
 	priv->block = 1;
 	priv->err = -EINVAL;
-	priv->filename = filename;
+	priv->filename = dpath(dentry, fsdev->vfsmount.mnt_root);
 	priv->blocksize = TFTP_BLOCK_SIZE;
 	priv->block_requested = -1;
 
@@ -461,11 +460,8 @@ out:
 static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-
-	filename = dpath(file->dentry, fsdev->vfsmount.mnt_root);
 
-	priv = tftp_do_open(dev, file->flags, filename);
+	priv = tftp_do_open(dev, file->flags, file->dentry);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -507,6 +503,7 @@ static int tftp_do_close(struct file_priv *priv)
 
 	net_unregister(priv->tftp_con);
 	kfifo_free(priv->fifo);
+	free(priv->filename);
 	free(priv->buf);
 	free(priv);
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

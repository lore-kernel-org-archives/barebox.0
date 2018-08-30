Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvKSQ-0000Et-L2
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 10:45:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Aug 2018 12:45:27 +0200
Message-Id: <20180830104527.4057-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] fs: tftp: improve file size handling
To: Barebox List <barebox@lists.infradead.org>

Previously we used FILE_SIZE_STREAM unconditionally. Instead, fill the
inode size with a valid filesize if we have one and only if not fall
back to FILE_SIZE_STREAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 9274e931a2..30256ada6e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -458,7 +458,6 @@ static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
 		return PTR_ERR(priv);
 
 	file->priv = priv;
-	file->size = SZ_2G;
 
 	return 0;
 }
@@ -619,7 +618,6 @@ static struct inode *tftp_get_inode(struct super_block *sb, const struct inode *
 
 	inode->i_ino = get_next_ino();
 	inode->i_mode = mode;
-	inode->i_size = FILE_SIZE_STREAM;
 
 	switch (mode & S_IFMT) {
 	default:
@@ -660,17 +658,25 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
 	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
 	struct inode *inode;
 	struct file_priv *priv;
+	int filesize;
 
 	priv = tftp_do_open(&fsdev->dev, O_RDONLY, dentry);
 	if (IS_ERR(priv))
 		return NULL;
 
+	filesize = priv->filesize;
+
 	tftp_do_close(priv);
 
 	inode = tftp_get_inode(dir->i_sb, dir, S_IFREG | S_IRWXUGO);
 	if (!inode)
 		return ERR_PTR(-ENOMEM);
 
+	if (filesize)
+		inode->i_size = filesize;
+	else
+		inode->i_size = FILE_SIZE_STREAM;
+
 	d_add(dentry, inode);
 
 	return NULL;
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

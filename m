Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8Szk-0006kg-5N
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 11:07:48 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 29 Jan 2014 11:06:51 +0000
Message-Id: <1390993612-26246-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
References: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/3] UBIFS: implement readlink entry point
To: barebox@lists.infradead.org

Implement the readlink entry point for future use by the DA923RC.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/ubifs/ubifs.c |   38 ++++++++++++++++++++++++++++++++++++++
 1 files changed, 38 insertions(+), 0 deletions(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index dfa6107..e2f9593 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -24,6 +24,7 @@
  */
 
 #include <common.h>
+#include <malloc.h>
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
@@ -549,6 +550,42 @@ static int ubifs_stat(struct device_d *dev, const char *filename, struct stat *s
 	return 0;
 }
 
+static char *ubifs_symlink(struct inode *inode)
+{
+	struct ubifs_inode *ui;
+	char *symlink;
+
+	ui = ubifs_inode(inode);
+	symlink = malloc(ui->data_len + 1);
+
+	memcpy(symlink, ui->data, ui->data_len);
+	symlink[ui->data_len] = '\0';
+
+	return symlink;
+}
+
+static int ubifs_readlink(struct device_d *dev, const char *pathname, char *buf,
+			size_t bufsz)
+{
+	struct ubifs_priv *priv = dev->priv;
+	struct inode *inode;
+	char *symlink;
+	int len;
+
+	inode = ubifs_findfile(priv->sb, pathname);
+
+	if (!inode)
+		return -ENOENT;
+
+	symlink = ubifs_symlink(inode);
+
+	len = min(bufsz, strlen(symlink));
+	memcpy(buf, symlink, len);
+	free(symlink);
+
+	return 0;
+}
+
 static int ubifs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -609,6 +646,7 @@ static struct fs_driver_d ubifs_driver = {
 	.readdir   = ubifs_readdir,
 	.closedir  = ubifs_closedir,
 	.stat      = ubifs_stat,
+	.readlink  = ubifs_readlink,
 	.type = filetype_ubifs,
 	.flags     = 0,
 	.drv = {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

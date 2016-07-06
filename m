Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKsaD-00046m-Ag
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 19:34:05 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id 7748E26C2001
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 21:32:59 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 21:32:52 +0200
Message-Id: <1467833572-26162-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
References: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/5] ubifs: check return pointer properly
To: barebox@lists.infradead.org

ubifs_iget() returns error codes encoded in the pointer,
so the NULL check will never be true.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 fs/ubifs/ubifs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index bc1b521..47eef7c 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -533,7 +533,7 @@ static unsigned long ubifs_findfile(struct super_block *sb, const char *filename
 			return 0;
 		inode = ubifs_iget(sb, inum);
 
-		if (!inode)
+		if (IS_ERR(inode))
 			return 0;
 		ui = ubifs_inode(inode);
 
@@ -1001,7 +1001,7 @@ static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
 		return -ENOENT;
 
 	inode = ubifs_iget(priv->sb, inum);
-	if (!inode)
+	if (IS_ERR(inode))
 		return -ENOENT;
 
 	uf = xzalloc(sizeof(*uf));
@@ -1126,7 +1126,7 @@ static DIR *ubifs_opendir(struct device_d *dev, const char *pathname)
 		return NULL;
 
 	inode = ubifs_iget(priv->sb, inum);
-	if (!inode)
+	if (IS_ERR(inode))
 		return NULL;
 
 	ubifs_iput(inode);
@@ -1206,7 +1206,7 @@ static int ubifs_stat(struct device_d *dev, const char *filename, struct stat *s
 		return -ENOENT;
 
 	inode = ubifs_iget(priv->sb, inum);
-	if (!inode)
+	if (IS_ERR(inode))
 		return -ENOENT;
 
 	s->st_size = inode->i_size;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

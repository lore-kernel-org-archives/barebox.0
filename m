Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCVMR-0002lT-1d
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:50:36 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Oct 2018 21:50:22 +0200
Message-Id: <20181016195022.24904-2-o.rempel@pengutronix.de>
In-Reply-To: <20181016195022.24904-1-o.rempel@pengutronix.de>
References: <20181016195022.24904-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 2/2] fs/devfs: fix compile warnings
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 fs/devfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index d2b801036e..10f098280e 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -193,7 +193,7 @@ static struct inode *devfs_alloc_inode(struct super_block *sb)
 	return &node->inode;
 }
 
-int devfs_iterate(struct file *file, struct dir_context *ctx)
+static int devfs_iterate(struct file *file, struct dir_context *ctx)
 {
 	struct cdev *cdev;
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

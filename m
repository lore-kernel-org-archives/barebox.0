Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8p7Q-0007ow-Oi
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 13:26:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1b8p73-0006m5-K4
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 15:26:09 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  3 Jun 2016 15:26:09 +0200
Message-Id: <1464960369-1241-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] fs: squashfs: use correct format specifier
To: barebox@lists.infradead.org

Fixes:
fs/squashfs/inode.c: warning: format '%d' expects argument
of type 'int', but argument 3 has type 'long long int'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/squashfs/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/squashfs/inode.c b/fs/squashfs/inode.c
index 749fc7ef9538..923c397fa89f 100644
--- a/fs/squashfs/inode.c
+++ b/fs/squashfs/inode.c
@@ -126,7 +126,7 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 	struct squashfs_base_inode *sqshb_ino = &squashfs_ino.base;
 	int xattr_id = SQUASHFS_INVALID_XATTR;
 
-	TRACE("Entered squashfs_read_inode: %d\n", ino);
+	TRACE("Entered squashfs_read_inode: %lld\n", ino);
 
 	/*
 	 * Read inode base common to all inode types.
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

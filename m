Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqzx4-0005y2-SA
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 14:12:35 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 16:12:32 +0200
Message-Id: <20200702141232.4734-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! fs: Add destroy_inode callbacks to filesystems
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

struct squashfs_inode_info *node is the pointer returned by xzalloc and
thus is what should be freed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/squashfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index cb2d936ea4d8..69451f7b846b 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -80,7 +80,7 @@ static void squashfs_destroy_inode(struct inode *inode)
 {
 	struct squashfs_inode_info *node = squashfs_i(inode);
 
-	free(inode);
+	free(node);
 }
 
 static const struct super_operations squashfs_super_ops = {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

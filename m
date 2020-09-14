Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHoBu-0003LH-LZ
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:06:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Sep 2020 15:06:39 +0200
Message-Id: <20200914130640.21416-3-s.hauer@pengutronix.de>
In-Reply-To: <20200914130640.21416-1-s.hauer@pengutronix.de>
References: <20200914130640.21416-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] fs: Fix use after free
To: Barebox List <barebox@lists.infradead.org>

In case of the fs mounted to '/' the root dentry of the mounted
filesystem is the place where it's mounted itself, so sb->s_root
is the same as fsdev->vfsmount.mountpoint. In that case make
sure we only access it before it has been killed in
dentry_delete_subtree().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a6c6f0cc93..5784e9c1f3 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -667,14 +667,14 @@ static void fs_remove(struct device_d *dev)
 	if (fsdev->loop && fsdev->cdev)
 		cdev_remove_loop(fsdev->cdev);
 
+	if (fsdev->vfsmount.mountpoint)
+		fsdev->vfsmount.mountpoint->d_flags &= ~DCACHE_MOUNTED;
+
 	dentry_delete_subtree(sb, sb->s_root);
 
 	list_for_each_entry_safe(inode, tmp, &sb->s_inodes, i_sb_list)
 		destroy_inode(inode);
 
-	if (fsdev->vfsmount.mountpoint)
-		fsdev->vfsmount.mountpoint->d_flags &= ~DCACHE_MOUNTED;
-
 	mntput(fsdev->vfsmount.parent);
 
 	free(fsdev->backingstore);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

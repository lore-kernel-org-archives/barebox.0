Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHoC2-0003P7-JD
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:06:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Sep 2020 15:06:38 +0200
Message-Id: <20200914130640.21416-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] fs: Drop unnecessary dput()
To: Barebox List <barebox@lists.infradead.org>

Calling dput() on the root dentry during unmount time is unnecessary,
the dentry will be removed later in dentry_delete_subtree() anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 30b835e265..a6c6f0cc93 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -667,7 +667,6 @@ static void fs_remove(struct device_d *dev)
 	if (fsdev->loop && fsdev->cdev)
 		cdev_remove_loop(fsdev->cdev);
 
-	dput(sb->s_root);
 	dentry_delete_subtree(sb, sb->s_root);
 
 	list_for_each_entry_safe(inode, tmp, &sb->s_inodes, i_sb_list)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

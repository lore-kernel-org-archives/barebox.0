Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k55jN-0003Mt-BA
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 11:12:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Aug 2020 13:12:11 +0200
Message-Id: <20200810111212.31286-3-s.hauer@pengutronix.de>
In-Reply-To: <20200810111212.31286-1-s.hauer@pengutronix.de>
References: <20200810111212.31286-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] fs: squashfs: Do not free root inode
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With inode reference counting in place the core will free the root
inode, so do not free it in the squashfs code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/super.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
index e2b7b8d5a1..35df3a0307 100644
--- a/fs/squashfs/super.c
+++ b/fs/squashfs/super.c
@@ -83,7 +83,6 @@ void squashfs_put_super(struct super_block *sb)
 	}
 
 	if (sb->s_root) {
-		kfree(squashfs_i(sb->s_root->d_inode));
 		kfree(sb->s_root);
 		sb->s_root = NULL;
 	}
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

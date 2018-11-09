Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hS-Bn
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:31 +0100
Message-Id: <20181109095246.15068-6-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/20] fs: ubifs: Avoid missing prototype warning
To: Barebox List <barebox@lists.infradead.org>

Remove unused ubifs_iput() and make locally used functions static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/super.c | 10 +---------
 fs/ubifs/ubifs.c |  2 +-
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 2fe2f3f640..fd1b645f9f 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -37,14 +37,6 @@
 #include "ubifs.h"
 #include <mtd/ubi-user.h>
 
-int ubifs_iput(struct inode *inode)
-{
-	list_del_init(&inode->i_sb_list);
-
-	free(inode);
-	return 0;
-}
-
 /* from include/linux/fs.h */
 static inline void i_uid_write(struct inode *inode, uid_t uid)
 {
@@ -56,7 +48,7 @@ static inline void i_gid_write(struct inode *inode, gid_t gid)
 	inode->i_gid = gid;
 }
 
-void unlock_new_inode(struct inode *inode)
+static void unlock_new_inode(struct inode *inode)
 {
 	return;
 }
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index bbe382dab0..7545dd4c9b 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -401,7 +401,7 @@ static loff_t ubifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return pos;
 }
 
-void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev)
+static void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev)
 {
 	struct ubi_volume_info vi = {};
 	struct ubi_device_info di = {};
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

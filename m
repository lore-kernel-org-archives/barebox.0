Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHo-00069s-Po
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:58 +0200
Message-Id: <20181002140403.3735-10-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] fs: implement clear_nlink and set_nlink
To: Barebox List <barebox@lists.infradead.org>

Implement clear_nlink and set_nlink and remove the private versions
from UBIFS.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c            | 16 ++++++++++++++++
 fs/ubifs/super.c   | 35 -----------------------------------
 include/linux/fs.h |  2 ++
 3 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 12851b7ae3..d76d829140 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1017,6 +1017,22 @@ void inc_nlink(struct inode *inode)
 	inode->__i_nlink++;
 }
 
+void clear_nlink(struct inode *inode)
+{
+	if (inode->i_nlink) {
+		inode->__i_nlink = 0;
+	}
+}
+
+void set_nlink(struct inode *inode, unsigned int nlink)
+{
+	if (!nlink) {
+		clear_nlink(inode);
+	} else {
+		inode->__i_nlink = nlink;
+	}
+}
+
 static struct inode *alloc_inode(struct super_block *sb)
 {
 	static const struct inode_operations empty_iops;
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 8bd1803bce..24b2c87248 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -63,41 +63,6 @@ int ubifs_iput(struct inode *inode)
 	return 0;
 }
 
-/* from fs/inode.c */
-/**
- * clear_nlink - directly zero an inode's link count
- * @inode: inode
- *
- * This is a low-level filesystem helper to replace any
- * direct filesystem manipulation of i_nlink.  See
- * drop_nlink() for why we care about i_nlink hitting zero.
- */
-void clear_nlink(struct inode *inode)
-{
-	if (inode->i_nlink) {
-		inode->__i_nlink = 0;
-	}
-}
-EXPORT_SYMBOL(clear_nlink);
-
-/**
- * set_nlink - directly set an inode's link count
- * @inode: inode
- * @nlink: new nlink (should be non-zero)
- *
- * This is a low-level filesystem helper to replace any
- * direct filesystem manipulation of i_nlink.
- */
-void set_nlink(struct inode *inode, unsigned int nlink)
-{
-	if (!nlink) {
-		clear_nlink(inode);
-	} else {
-		inode->__i_nlink = nlink;
-	}
-}
-EXPORT_SYMBOL(set_nlink);
-
 /* from include/linux/fs.h */
 static inline void i_uid_write(struct inode *inode, uid_t uid)
 {
diff --git a/include/linux/fs.h b/include/linux/fs.h
index d38dc12872..a72bc066c3 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -411,6 +411,8 @@ unsigned int get_next_ino(void);
 void iput(struct inode *);
 struct inode *iget(struct inode *);
 void inc_nlink(struct inode *inode);
+void clear_nlink(struct inode *inode);
+void set_nlink(struct inode *inode, unsigned int nlink);
 
 struct inode_operations {
 	struct dentry * (*lookup) (struct inode *,struct dentry *, unsigned int);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

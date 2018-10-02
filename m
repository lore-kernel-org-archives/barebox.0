Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHm-0007Uf-Bu
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:56 +0200
Message-Id: <20181002140403.3735-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] fs: implement file_inode
To: Barebox List <barebox@lists.infradead.org>

To ease code porting from Linux

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c            | 1 +
 include/linux/fs.h | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 2a4d78c9d7..5bfc6f8b78 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2423,6 +2423,7 @@ DIR *opendir(const char *pathname)
 	}
 
 	file.f_path.dentry = dir;
+	file.f_inode = d_inode(dir);
 	file.f_op = dir->d_inode->i_fop;
 
 	d = xzalloc(sizeof(*d));
diff --git a/include/linux/fs.h b/include/linux/fs.h
index e2a69890f0..a29fd8fe4a 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -253,6 +253,11 @@ struct super_operations {
 	void (*destroy_inode)(struct inode *);
 };
 
+static inline struct inode *file_inode(const struct file *f)
+{
+	return f->f_inode;
+}
+
 /*
  * Inode flags - they have no relation to superblock flags now
  */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

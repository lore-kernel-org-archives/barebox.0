Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3bjs-000191-Fj
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:22:17 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d25so1165978pfn.8
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:22:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:21:50 -0700
Message-Id: <20190312072150.19092-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190312072150.19092-1-andrew.smirnov@gmail.com>
References: <20190312072150.19092-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] fs: ramfs: Drop unnecessary check in ramfs_mknod()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's already an early exit statement triggered by "inode" being
NULL. Drop an extra check that will always be true.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/ramfs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index eec7cfb5b..7e7dc7aca 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -131,10 +131,8 @@ ramfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode)
 	if (!inode)
 		return -ENOSPC;
 
-	if (inode) {
-		d_instantiate(dentry, inode);
-		dget(dentry);   /* Extra count - pin the dentry in core */
-	}
+	d_instantiate(dentry, inode);
+	dget(dentry);   /* Extra count - pin the dentry in core */
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

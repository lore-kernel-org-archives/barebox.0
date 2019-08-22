Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gwF-0004K5-I7
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:51:19 +0000
Received: from geraet.fritz.box (39-236-142-46.pool.kielnet.net
 [46.142.236.39]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id F33741C0007
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2019 06:51:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:51:01 +0200
Message-Id: <20190822065102.22024-3-ahmad@a3f.at>
In-Reply-To: <20190822065102.22024-1-ahmad@a3f.at>
References: <20190822065102.22024-1-ahmad@a3f.at>
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
Subject: [PATCH RFC 2/3] fs: provide no_revalidate_d_ops for network file
 systems
To: barebox@lists.infradead.org

Networked file systems may wish to forego dentry caching altogether, so
every lookup goes over the network and stale data is avoided.
Provide a no_revalidate_d_ops helper object that does this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/fs.c                | 9 +++++++++
 include/linux/dcache.h | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index c6cb49996ec5..dda19db91341 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1262,6 +1262,15 @@ static void d_invalidate(struct dentry *dentry)
 {
 }
 
+static int d_no_revalidate(struct dentry *dir, unsigned int flags)
+{
+	return 0;
+}
+
+const struct dentry_operations no_revalidate_d_ops = {
+	.d_revalidate = d_no_revalidate,
+};
+
 static inline int d_revalidate(struct dentry *dentry, unsigned int flags)
 {
 	if (unlikely(dentry->d_flags & DCACHE_OP_REVALIDATE))
diff --git a/include/linux/dcache.h b/include/linux/dcache.h
index 1581ddc701d3..a9619422013e 100644
--- a/include/linux/dcache.h
+++ b/include/linux/dcache.h
@@ -185,4 +185,6 @@ static inline struct inode *d_inode(const struct dentry *dentry)
 
 char *dpath(struct dentry *dentry, struct dentry *root);
 
+extern const struct dentry_operations no_revalidate_d_ops;
+
 #endif	/* __LINUX_DCACHE_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

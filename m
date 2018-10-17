Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gChR3-0003VI-Gv
 for barebox@lists.infradead.org; Wed, 17 Oct 2018 08:44:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2018 10:43:52 +0200
Message-Id: <20181017084353.5217-2-s.hauer@pengutronix.de>
In-Reply-To: <20181017084353.5217-1-s.hauer@pengutronix.de>
References: <20181017084353.5217-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fs: implement d_revalidate
To: Barebox List <barebox@lists.infradead.org>
Cc: Ladislav Michl <ladis@linux-mips.org>

d_revalidate is useful when filesystems change under the hood of the
fs layer. This can happen with network filesystems or with devfs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c                | 37 ++++++++++++++++++++++++++++++++++++-
 include/linux/dcache.h |  3 +++
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index d76d829140..eed0155f0d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1141,6 +1141,12 @@ const struct qstr slash_name = QSTR_INIT("/", 1);
 void d_set_d_op(struct dentry *dentry, const struct dentry_operations *op)
 {
 	dentry->d_op = op;
+
+	if (!op)
+		return;
+
+	if (op->d_revalidate)
+		dentry->d_flags |= DCACHE_OP_REVALIDATE;
 }
 
 /**
@@ -1285,6 +1291,35 @@ void d_invalidate(struct dentry *dentry)
 {
 }
 
+static inline int d_revalidate(struct dentry *dentry, unsigned int flags)
+{
+	if (unlikely(dentry->d_flags & DCACHE_OP_REVALIDATE))
+		return dentry->d_op->d_revalidate(dentry, flags);
+	else
+		return 1;
+}
+
+/*
+ * This looks up the name in dcache and possibly revalidates the found dentry.
+ * NULL is returned if the dentry does not exist in the cache.
+ */
+static struct dentry *lookup_dcache(const struct qstr *name,
+				    struct dentry *dir,
+				    unsigned int flags)
+{
+	struct dentry *dentry = d_lookup(dir, name);
+	if (dentry) {
+		int error = d_revalidate(dentry, flags);
+		if (unlikely(error <= 0)) {
+			if (!error)
+				d_invalidate(dentry);
+			dput(dentry);
+			return ERR_PTR(error);
+		}
+	}
+	return dentry;
+}
+
 static inline void __d_clear_type_and_inode(struct dentry *dentry)
 {
 	dentry->d_flags &= ~(DCACHE_ENTRY_TYPE | DCACHE_FALLTHRU);
@@ -1496,7 +1531,7 @@ static struct dentry *__lookup_hash(const struct qstr *name,
 	if (!base)
 		return ERR_PTR(-ENOENT);
 
-	dentry = d_lookup(base, name);
+	dentry = lookup_dcache(name, base, flags);
 	if (dentry)
 		return dentry;
 
diff --git a/include/linux/dcache.h b/include/linux/dcache.h
index 16244129bf..1581ddc701 100644
--- a/include/linux/dcache.h
+++ b/include/linux/dcache.h
@@ -82,6 +82,7 @@ struct dentry {
 };
 
 struct dentry_operations {
+	int (*d_revalidate)(struct dentry *, unsigned int);
 };
 
 struct dentry * d_make_root(struct inode *);
@@ -93,6 +94,8 @@ void d_delete(struct dentry *);
 struct dentry *dget(struct dentry *);
 void dput(struct dentry *);
 
+#define DCACHE_OP_REVALIDATE		0x00000004
+
 #define DCACHE_ENTRY_TYPE		0x00700000
 #define DCACHE_MISS_TYPE		0x00000000 /* Negative dentry (maybe fallthru to nowhere) */
 #define DCACHE_WHITEOUT_TYPE		0x00100000 /* Whiteout dentry (stop pathwalk) */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

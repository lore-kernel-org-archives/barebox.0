Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJB-0002Og-5A
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:44 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:09 +0100
Message-Id: <20181120200714.3692-5-linux@rempel-privat.de>
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 4/9] fs: fix possible null pointer dereference of base.
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

we use base before checking if it is NULL

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 fs/fs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 42fd63ad0..625ed10b7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1526,7 +1526,7 @@ static struct dentry *__lookup_hash(const struct qstr *name,
 {
 	struct dentry *dentry;
 	struct dentry *old;
-	struct inode *dir = base->d_inode;
+	struct inode *dir;
 
 	if (!base)
 		return ERR_PTR(-ENOENT);
@@ -1539,6 +1539,7 @@ static struct dentry *__lookup_hash(const struct qstr *name,
 	if (unlikely(!dentry))
 		return ERR_PTR(-ENOMEM);
 
+	dir = base->d_inode;
 	old = dir->i_op->lookup(dir, dentry, flags);
 	if (IS_ERR(old)) {
 		dput(dentry);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

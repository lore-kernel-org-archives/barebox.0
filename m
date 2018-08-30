Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvKSQ-0000Es-L5
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 10:45:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Aug 2018 12:45:25 +0200
Message-Id: <20180830104527.4057-4-s.hauer@pengutronix.de>
In-Reply-To: <20180830104527.4057-1-s.hauer@pengutronix.de>
References: <20180830104527.4057-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] fs: tftp: fix return value
To: Barebox List <barebox@lists.infradead.org>

When tftp_get_inode() fails it is a sign for a out of memory situtation
rather than an indicator for no space left on the filesystem, so return
-ENOMEM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index bcb95bc1db..0baf0c2890 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -653,7 +653,7 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
 
 	inode = tftp_get_inode(dir->i_sb, dir, S_IFREG | S_IRWXUGO);
 	if (!inode)
-		return ERR_PTR(-ENOSPC);
+		return ERR_PTR(-ENOMEM);
 
 	d_add(dentry, inode);
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

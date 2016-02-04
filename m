Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRHzE-0000gh-6r
 for barebox@lists.infradead.org; Thu, 04 Feb 2016 11:22:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Feb 2016 12:21:44 +0100
Message-Id: <1454584904-23740-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubifs: Fix reading holes in files
To: Barebox List <barebox@lists.infradead.org>

When a whole block of 4KiB in an ubifs file is zero then the block is
not stored in the filesystem. read_block() returns -ENOENT in this case,
so this return value must be treated as success.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index a9189f7..1f31f6f 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -377,7 +377,7 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 
 	if (block != uf->block) {
 		ret = read_block(uf->inode, uf->buf, block, uf->dn);
-		if (ret)
+		if (ret && ret != -ENOENT)
 			return ret;
 		uf->block = block;
 	}
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

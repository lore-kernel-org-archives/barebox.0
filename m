Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5mPy-000125-5r
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 06:38:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Sep 2018 08:37:53 +0200
Message-Id: <20180928063753.985-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: ubifs: Do not free memory not allocated by ubifs
To: Barebox List <barebox@lists.infradead.org>

Since the switch to dentry cache implementation we no longer allocate
the super block, so we must not free it in the error path.

Fixes: ("4d2b23bcf9 fs: ubifs: Switch to dentry cache implementation")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/super.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index abf8ef63c9..977c723442 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -2590,6 +2590,5 @@ int ubifs_get_super(struct device_d *dev, struct ubi_volume_desc *ubi, int silen
 	return 0;
 out:
 	kfree(c);
-	kfree(sb);
 	return err;
 }
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

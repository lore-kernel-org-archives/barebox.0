Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007rE-QK
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:22 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id C5ECE18B4263
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:39 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:54 +0100
Message-Id: <1391762936-2747-13-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 12/14] mtd: core: avoid possible NULL ptr deref
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mtd/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 6db1c6d..3439a38 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -404,7 +404,8 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	}
 
 	devfs_create(&mtd->cdev);
-	of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
+	if (mtd->parent)
+		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLb-0004BZ-94
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:48 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 30344FF9676
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:16 +0200
Message-Id: <1350248478-19359-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/12] mtd: register device a pure device
To: barebox@lists.infradead.org

as we do not need to probe them and they have no driver or bus attached

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 7c323a1..a91ef04 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -225,7 +225,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 		devname = "mtd";
 	strcpy(mtd->class_dev.name, devname);
 	mtd->class_dev.id = DEVICE_ID_DYNAMIC;
-	platform_device_register(&mtd->class_dev);
+	register_device(&mtd->class_dev);
 
 	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

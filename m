Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tj-0005h3-1a
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:05:59 +0200
Message-Id: <1373983566-27721-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
References: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] mtd: Add devicetree partition parsing
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 37f4428..f46ab46 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -365,6 +365,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 	}
 
 	devfs_create(&mtd->cdev);
+	of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

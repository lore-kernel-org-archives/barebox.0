Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REMjy-0004kk-36
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 14:58:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 16:58:29 +0200
Message-Id: <1318517909-21205-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318517909-21205-1-git-send-email-s.hauer@pengutronix.de>
References: <1318517909-21205-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] nand: export some useful information about flashes to
	device variables
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 9423ac8..6db21d6 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -265,6 +265,12 @@ int add_mtd_device(struct mtd_info *mtd)
 
 	sprintf(str, "%u", mtd->size);
 	dev_add_param_fixed(&mtd->class_dev, "size", str);
+	sprintf(str, "%u", mtd->erasesize);
+	dev_add_param_fixed(&mtd->class_dev, "erasesize", str);
+	sprintf(str, "%u", mtd->writesize);
+	dev_add_param_fixed(&mtd->class_dev, "writesize", str);
+	sprintf(str, "%u", mtd->oobsize);
+	dev_add_param_fixed(&mtd->class_dev, "oobsize", str);
 
 	devfs_create(&mtd->cdev);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

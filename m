Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxF-0005Gq-VV
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:22 +0100
Message-Id: <1458040534-6171-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/16] mtd: Introduce function to get mtd type string
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 22 ++++++++++++++++++++++
 include/linux/mtd/mtd.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 3143b07..0a3f7ed 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -733,3 +733,25 @@ void mtdcore_add_hook(struct mtddev_hook *hook)
 {
 	list_add(&hook->hook, &mtd_register_hooks);
 }
+
+const char *mtd_type_str(struct mtd_info *mtd)
+{
+	switch (mtd->type) {
+	case MTD_ABSENT:
+		return "absent";
+	case MTD_RAM:
+		return "ram";
+	case MTD_ROM:
+		return "rom";
+	case MTD_NORFLASH:
+		return "nor";
+	case MTD_NANDFLASH:
+		return "nand";
+	case MTD_DATAFLASH:
+		return"dataflash";
+	case MTD_UBIVOLUME:
+		return "ubi";
+	default:
+		return "unknown";
+	}
+}
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index efb08b1..98dd82c 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -281,6 +281,7 @@ extern struct mtd_info *get_mtd_device_nm(const char *name);
 
 extern void put_mtd_device(struct mtd_info *mtd);
 
+const char *mtd_type_str(struct mtd_info *mtd);
 
 struct mtd_notifier {
 	void (*add)(struct mtd_info *mtd);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

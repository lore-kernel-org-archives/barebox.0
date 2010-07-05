Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000ks-BQ
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:32 +0200
Message-Id: <1278335795-16289-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] include stuff missing for ubi
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mtd/mtd.h |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 39ee992..01980f3 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -15,6 +15,7 @@
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/mtd/mtd-abi.h>
+#include <asm-generic/div64.h>
 
 #define MTD_CHAR_MAJOR 90
 #define MTD_BLOCK_MAJOR 31
@@ -211,7 +212,16 @@ struct mtd_info {
 	char *size_str;
 };
 
+static inline uint32_t mtd_div_by_eb(uint64_t sz, struct mtd_info *mtd)
+{
+	do_div(sz, mtd->erasesize);
+	return sz;
+}
 
+static inline uint32_t mtd_mod_by_eb(uint64_t sz, struct mtd_info *mtd)
+{
+	return do_div(sz, mtd->erasesize);
+}
 	/* Kernel-side ioctl definitions */
 
 extern int add_mtd_device(struct mtd_info *mtd);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

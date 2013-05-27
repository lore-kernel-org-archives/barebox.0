Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgsxM-00013T-GS
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:39:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:38:40 +0200
Message-Id: <1369643920-20604-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: call mtd_erase with complete area if possible
To: barebox@lists.infradead.org

If a device does not have bad blocks loop over the eraseblocks
in the driver instead of the core. This allows the mtd_dataflash
driver to erase blocks instead of pages to gain more speed during
erasing. Also the mtd_dataflash driver modifies the erase_info
struct which causes the outer loop in the core to never end.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Renaud, you recently sent a patch to fix erase on non uniform
flashes. This patch should fix this (by accident) aswell (or maybe
it causes other problems ;). Could you please test this one?

Thanks
 Sascha

 drivers/mtd/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 61744b6..f358098 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -107,6 +107,12 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 	memset(&erase, 0, sizeof(erase));
 	erase.mtd = mtd;
 	erase.addr = offset;
+
+	if (!mtd->block_isbad) {
+		erase.len = count;
+		return mtd_erase(mtd, &erase);
+	}
+
 	erase.len = mtd->erasesize;
 
 	while (count > 0) {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

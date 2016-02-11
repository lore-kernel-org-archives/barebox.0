Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aToRA-0007If-Mc
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 10:25:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Feb 2016 11:24:55 +0100
Message-Id: <1455186296-20452-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: spi-nor: Match jedec,spi-nor
To: Barebox List <barebox@lists.infradead.org>

It is recommended to use jedec,spi-nor instead of specifying the exact
flash type (which is autodetected via Jedec ID anyway), so add the
compatible entry to the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index d627690..656a7f5 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -298,6 +298,8 @@ static __maybe_unused struct of_device_id m25p80_dt_ids[] = {
 	{
 		.compatible = "m25p80",
 	}, {
+		.compatible = "jedec,spi-nor",
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

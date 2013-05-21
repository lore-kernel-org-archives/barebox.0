Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueh9b-0002QU-Ti
 for barebox@lists.infradead.org; Tue, 21 May 2013 07:38:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 09:38:13 +0200
Message-Id: <1369121895-11282-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
References: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mtd: dataflash: Add devicetree probing support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/mtd_dataflash.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index ddab6bb..52bd842 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -871,9 +871,20 @@ static int dataflash_probe(struct device_d *dev)
 	return status;
 }
 
+static __maybe_unused struct of_device_id dataflash_dt_ids[] = {
+	{
+		.compatible = "atmel,at45",
+	}, {
+		.compatible = "atmel,dataflash",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d dataflash_driver = {
 	.name  = "mtd_dataflash",
 	.probe = dataflash_probe,
+	.of_compatible = DRV_OF_COMPAT(dataflash_dt_ids),
 };
 device_spi_driver(dataflash_driver);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

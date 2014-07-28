Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBrTm-0000SF-Vr
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 20:25:07 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Mon, 28 Jul 2014 22:24:27 +0200
Message-Id: <1406579067-3866-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] mfd: mc34704: Add DT support
To: barebox@lists.infradead.org

Add a compatible to this driver so it can be added through devicetree.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mfd/mc34704.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 9afab07a2df5..3dc85f5474dd 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -123,9 +123,15 @@ static int mc34704_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id mc34704_dt_ids[] = {
+	{ .compatible = "fsl,mc34704", },
+	{ }
+};
+
 static struct driver_d mc34704_driver = {
 	.name  = DRIVERNAME,
 	.probe = mc34704_probe,
+	.of_compatible = DRV_OF_COMPAT(mc34704_dt_ids),
 };
 
 static int mc34704_init(void)
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FC-3M
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:10 +0100
Message-Id: <1422430339-11969-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/15] serial: stm_serial: Add devicetree support
To: Barebox List <barebox@lists.infradead.org>

This adds device tree support for the stm serial driver. This
driver really is a AMBA primecell, so the amba-pl011 could be
used. However, the current code tries to get the apb_pclk before
the clocks are registered, so this does not work. Use the stm
driver instead until a solution is found.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/stm-serial.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index e5f57dc..8bb242b 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -189,9 +189,18 @@ static void stm_serial_remove(struct device_d *dev)
 	free(priv);
 }
 
+static __maybe_unused struct of_device_id stm_serial_dt_ids[] = {
+	{
+		.compatible = "arm,pl011",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d stm_serial_driver = {
         .name   = "stm_serial",
         .probe  = stm_serial_probe,
 	.remove = stm_serial_remove,
+	.of_compatible = DRV_OF_COMPAT(stm_serial_dt_ids),
 };
 console_platform_driver(stm_serial_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z70NR-0000tb-HP
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 11:59:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 13:58:38 +0200
Message-Id: <1434974318-12506-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: smc911x: Add device tree support
To: Barebox List <barebox@lists.infradead.org>

There should probably be more compatible entries, but this is what
the kernel driver matches for.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc911x.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 9977ae3..ba14a98 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -630,8 +630,14 @@ static int smc911x_probe(struct device_d *dev)
         return 0;
 }
 
+static const struct of_device_id smsc911x_dt_ids[] = {
+	{ .compatible = "smsc,lan9115", },
+	{ /* sentinel */ }
+};
+
 static struct driver_d smc911x_driver = {
         .name  = "smc911x",
         .probe = smc911x_probe,
+	.of_compatible = DRV_OF_COMPAT(smsc911x_dt_ids),
 };
 device_platform_driver(smc911x_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jveNC-0004y9-Vj
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 10:10:48 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 15 Jul 2020 12:10:41 +0200
Message-Id: <20200715101042.29944-3-o.rempel@pengutronix.de>
In-Reply-To: <20200715101042.29944-1-o.rempel@pengutronix.de>
References: <20200715101042.29944-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/3] ARM: embest-riotboard: port board file to the driver
 model
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, david@protonic.nl

This patch can be used as example for the new board-driver
functionality.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/board.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
index eb956f1f50..23eeec075d 100644
--- a/arch/arm/boards/embest-riotboard/board.c
+++ b/arch/arm/boards/embest-riotboard/board.c
@@ -62,11 +62,8 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static int riotboard_device_init(void)
+static int riotboard_probe(struct device_d *dev)
 {
-	if (!of_machine_is_compatible("riot,imx6s-riotboard"))
-		return 0;
-
 	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
 
 	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.barebox",
@@ -76,4 +73,15 @@ static int riotboard_device_init(void)
 
 	return 0;
 }
-device_initcall(riotboard_device_init);
+
+static const struct of_device_id riotboard_of_match[] = {
+	{ .compatible = "riot,imx6s-riotboard" },
+	{},
+};
+
+static struct driver_d riotboard_driver = {
+	.name = "board-embest-riot",
+	.probe = riotboard_probe,
+	.of_compatible = DRV_OF_COMPAT(riotboard_of_match),
+};
+device_platform_driver(riotboard_driver);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

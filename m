Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Urkfg-0001vk-5X
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:54 +0200
Message-Id: <1372233657-19455-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] ARM: i.MX6 realq7: prepare multiboard support
To: barebox@lists.infradead.org

Protect initcalls with the corrent of compatible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/board.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index 7983b88..9cf6c31 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -81,6 +81,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 
 static int realq7_enet_init(void)
 {
+	if (!of_machine_is_compatible("dmo,imx6q-realq7"))
+		return 0;
+
 	mxc_iomux_v3_setup_multiple_pads(realq7_pads_gpio, ARRAY_SIZE(realq7_pads_gpio));
 	gpio_direction_output(RQ7_GPIO_ENET_PHYADD2, 0);
 	gpio_direction_output(RQ7_GPIO_ENET_MODE0, 1);
@@ -102,19 +105,16 @@ static int realq7_enet_init(void)
 }
 fs_initcall(realq7_enet_init);
 
-static int realq7_devices_init(void)
+static int realq7_env_init(void)
 {
+	if (!of_machine_is_compatible("dmo,imx6q-realq7"))
+		return 0;
+
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0x00907000);
 	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc3.barebox",
 		0, NULL, 0, 0x00907000);
 
-	return 0;
-}
-device_initcall(realq7_devices_init);
-
-static int realq7_env_init(void)
-{
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		device_detect_by_name("mmc3");
@@ -136,8 +136,11 @@ late_initcall(realq7_env_init);
 
 static int realq7_console_init(void)
 {
+	if (!of_machine_is_compatible("dmo,imx6q-realq7"))
+		return 0;
+
 	imx6_init_lowlevel();
 
 	return 0;
 }
-core_initcall(realq7_console_init);
+postcore_initcall(realq7_console_init);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

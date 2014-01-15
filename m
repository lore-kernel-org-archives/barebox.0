Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3KsL-0005FT-Q9
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 07:26:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Jan 2014 08:26:34 +0100
Message-Id: <1389770794-20487-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
References: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: dts: change dmo, imx6q-realq7 compatible to dmo,
 imx6q-edmqmx6
To: barebox@lists.infradead.org

To use the same compatible as the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/board.c | 6 +++---
 arch/arm/dts/imx6q-dmo-edmqmx6.dts     | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index 1753bdd..8a49bee 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -74,7 +74,7 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 
 static int realq7_enet_init(void)
 {
-	if (!of_machine_is_compatible("dmo,imx6q-realq7"))
+	if (!of_machine_is_compatible("dmo,imx6q-edmqmx6"))
 		return 0;
 
 	mxc_iomux_v3_setup_multiple_pads(realq7_pads_gpio, ARRAY_SIZE(realq7_pads_gpio));
@@ -100,7 +100,7 @@ fs_initcall(realq7_enet_init);
 
 static int realq7_env_init(void)
 {
-	if (!of_machine_is_compatible("dmo,imx6q-realq7"))
+	if (!of_machine_is_compatible("dmo,imx6q-edmqmx6"))
 		return 0;
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
@@ -113,7 +113,7 @@ late_initcall(realq7_env_init);
 
 static int realq7_console_init(void)
 {
-	if (!of_machine_is_compatible("dmo,imx6q-realq7"))
+	if (!of_machine_is_compatible("dmo,imx6q-edmqmx6"))
 		return 0;
 
 	barebox_set_hostname("eDM-QMX6");
diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index 4701d79..9fe1284 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -14,8 +14,8 @@
 #include "imx6q.dtsi"
 
 / {
-	model = "Data Modul RealQ7 Board";
-	compatible = "dmo,imx6q-realq7", "fsl,imx6q";
+	model = "Data Modul eDM-QMX6 Board";
+	compatible = "dmo,imx6q-edmqmx6", "fsl,imx6q";
 
 	chosen {
 		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

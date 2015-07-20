Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZH6W5-0005AY-Q3
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 08:33:42 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 20 Jul 2015 10:33:05 +0200
Message-Id: <1437381185-30047-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM: imx6: rename SPI NOR device to /dev/spinor0
To: barebox@lists.infradead.org

Barebox currently names the SPI NOR device "/dev/sst25vf016b",
but the barebox update handler still points to "/dev/m25p80",
causing barebox_update to fail.
Choose a descriptive name instead.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 4 ++--
 arch/arm/dts/imx6q-sabrelite.dts                | 4 ++++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index edf0811..d40f99b 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -164,8 +164,8 @@ static int sabrelite_devices_init(void)
 
 	armlinux_set_architecture(3769);
 
-	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
-			BBU_HANDLER_FLAG_DEFAULT);
+	imx6_bbu_internal_spi_i2c_register_handler("spiflash",
+			"/dev/spinor0.barebox", BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index 96e4688..61ca82e 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -17,6 +17,10 @@
 / {
 	model = "Freescale i.MX6 Quad SABRE Lite Board";
 	compatible = "fsl,imx6q-sabrelite", "fsl,imx6q";
+
+	aliases {
+		spinor0 = &flash;
+	};
 };
 
 &sata {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

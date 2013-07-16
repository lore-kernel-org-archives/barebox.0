Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tg-0005gx-VG
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:06:04 +0200
Message-Id: <1373983566-27721-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
References: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] ARM: i.MX53 QSB: configure environment from devicetree
To: barebox@lists.infradead.org

While at it use offset 512k to allow bigger barebox binaries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/board.c |  4 ----
 arch/arm/dts/imx53-qsb.dts                  | 12 ++++++++++++
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 15dc591..7e8fc27 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -86,10 +86,6 @@ static int loco_late_init(void)
 	if (!of_machine_is_compatible("fsl,imx53-qsb"))
 		return 0;
 
-	device_detect_by_name("mmc0");
-
-	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-
 	mc34708 = mc13xxx_get();
 	if (mc34708) {
 		/* get the board revision from fuse */
diff --git a/arch/arm/dts/imx53-qsb.dts b/arch/arm/dts/imx53-qsb.dts
index 1dfb48b..3be4ff2 100644
--- a/arch/arm/dts/imx53-qsb.dts
+++ b/arch/arm/dts/imx53-qsb.dts
@@ -19,6 +19,11 @@
 
 	chosen {
 		linux,stdout-path = "/soc/aips@50000000/serial@53fbc000";
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &esdhc1, "partname:barebox-environment";
+		};
 	};
 
 	memory {
@@ -119,6 +124,13 @@
 	pinctrl-0 = <&pinctrl_esdhc1_1>;
 	cd-gpios = <&gpio3 13 0>;
 	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox-environment";
+		reg = <0x80000 0x20000>;
+	};
 };
 
 &ssi2 {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

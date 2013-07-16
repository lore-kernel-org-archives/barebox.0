Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tg-0005gw-VJ
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:06:03 +0200
Message-Id: <1373983566-27721-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] ARM: i.MX51 babbage: configure environment from
 devicetree
To: barebox@lists.infradead.org

While at it use offset 512k to allow bigger barebox binaries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |  5 -----
 arch/arm/dts/imx51-babbage.dts             | 12 ++++++++++++
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 2e7be85..cafcf37 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -178,11 +178,6 @@ static int imx51_babbage_late_init(void)
 		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx51_babbage_start,
 		flash_header_imx51_babbage_end - flash_header_imx51_babbage_start, 0);
 
-	device_detect_by_name("mmc0");
-
-	devfs_add_partition("mmc0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-
 	return 0;
 }
 late_initcall(imx51_babbage_late_init);
diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index 4950eef..4edbccb 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -19,6 +19,11 @@
 
 	chosen {
 		linux,stdout-path = "/soc/aips@70000000/serial@73fbc000";
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &esdhc1, "partname:barebox-environment";
+		};
 	};
 
 	memory {
@@ -73,6 +78,13 @@
 	fsl,cd-controller;
 	fsl,wp-controller;
 	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox-environment";
+		reg = <0x80000 0x20000>;
+	};
 };
 
 &esdhc2 {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

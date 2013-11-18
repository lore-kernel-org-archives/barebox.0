Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViMfd-0007iK-2i
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 11:07:10 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 18 Nov 2013 12:06:36 +0100
Message-Id: <1384772798-3297-5-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
References: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 5/6] ARM i.MX6: sabrelite: move flash partitions into device
 tree
To: barebox@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c |  2 --
 arch/arm/dts/imx6q-sabrelite.dts                | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 3584951..22be6f8 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -123,8 +123,6 @@ static int sabrelite_devices_init(void)
 	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3769);
 
-	devfs_add_partition("m25p0", 0, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("m25p0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index 97372dd..0d05574 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -19,6 +19,11 @@
 
 	chosen {
 		linux,stdout-path = &uart2;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+		};
 	};
 
 	memory {
@@ -80,6 +85,18 @@
 		compatible = "sst,sst25vf016b", "m25p80";
 		spi-max-frequency = <20000000>;
 		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+
+		partition@1 {
+			label = "barebox-environment";
+			reg = <0x80000 0x80000>;
+		};
 	};
 };
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

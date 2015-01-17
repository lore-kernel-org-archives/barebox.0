Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward5o.mail.yandex.net ([37.140.190.34])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCSuq-00011R-LT
 for barebox@lists.infradead.org; Sat, 17 Jan 2015 12:55:50 +0000
Received: from smtp4o.mail.yandex.net (smtp4o.mail.yandex.net [37.140.190.29])
 by forward5o.mail.yandex.net (Yandex) with ESMTP id 91FCF1701E4A
 for <barebox@lists.infradead.org>; Sat, 17 Jan 2015 15:55:22 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Sat, 17 Jan 2015 15:55:17 +0300
Message-Id: <1421499317-3322-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH] ARM: IMX: Embedsky E9: Choose right environment when booting
 from SD or EMMC.
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 arch/arm/boards/embedsky-e9/board.c                | 17 +++++++++++++++-
 .../arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 |  4 ++--
 arch/arm/dts/imx6q-embedsky-e9.dts                 | 23 +++++++++++++++++++++-
 3 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index 1e7e067..e8aac0c 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -40,6 +40,7 @@
 #include <mach/spi.h>
 #include <mach/usb.h>
 #include <envfs.h>
+#include <bootsource.h>
 
 #define PHY_ID_RTL8211E	0x001cc915
 #define PHY_ID_MASK	0xffffffff
@@ -59,11 +60,25 @@ static int rtl8211e_phy_fixup(struct phy_device *dev)
 
 static int e9_devices_init(void)
 {
+	int ret;
+	char *environment_path;
+
 	if (!of_machine_is_compatible("embedsky,e9"))
 		return 0;
 
 	armlinux_set_architecture(3980);
-	barebox_set_hostname("e9");
+
+	environment_path = asprintf("/chosen/environment-mmc%d",
+				bootsource_get_instance());
+
+	ret = of_device_enable_path(environment_path);
+
+	if (ret < 0)
+		pr_warn("Failed to enable environment partition '%s' (%d)\n",
+			environment_path, ret);
+
+	free(environment_path);
+
 	defaultenv_append_directory(defaultenv_e9);
 
 	return 0;
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
index 374eb1c..f6cb529 100644
--- a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
@@ -2,5 +2,5 @@
 
 mount /dev/mmc3.0
 
-global.bootm.image=/mnt/mmc3.0/boot/zImage
-global.linux.bootargs.dyn.root="root=/dev/mmcblk1p1 rootwait"
+global.bootm.image=/mnt/mmc3.0/zImage
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index d8a606a..53665cf 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -19,9 +19,16 @@
 	chosen {
 		linux,stdout-path = &uart4;
 
-		environment@0 {
+		environment-mmc1 {
 			compatible = "barebox,environment";
 			device-path = &usdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-mmc3 {
+			compatible = "barebox,environment";
+			device-path = &usdhc4, "partname:barebox-environment";
+			status = "disabled";
 		};
 
 	};
@@ -40,3 +47,17 @@
 		reg = <0x80000 0x80000>;
 	};
 };
+
+&usdhc4 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC2k8-0005E2-BY
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 11:08:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cC2jl-0002Bh-Gh
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 12:07:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Nov 2016 12:07:41 +0100
Message-Id: <20161130110741.23345-3-l.stach@pengutronix.de>
In-Reply-To: <20161130110741.23345-1-l.stach@pengutronix.de>
References: <20161130110741.23345-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: rdu2: bring board support in line with other boards
To: barebox@lists.infradead.org

- add barebox update handler
- add barebox environment partition
- automount using the PCIe ethernet
- set hostname from board file

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c                 | 18 ++++++++++++++++++
 .../zii-imx6q-rdu2/defaultenv-rdu2/init/automount      | 17 +++++++++++++++++
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi                     | 12 +++++++++++-
 3 files changed, 46 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 636c57630803..ee04517d2985 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -33,6 +33,7 @@
 #include <spi/spi.h>
 #include <mach/spi.h>
 #include <mach/usb.h>
+#include <mach/bbu.h>
 
 #define RDU2_DAC1_RESET	IMX_GPIO_NR(1, 0)
 #define RDU2_DAC2_RESET	IMX_GPIO_NR(1, 2)
@@ -151,3 +152,20 @@ static int rdu2_enable_front_panel_usb(void)
 	return ret;
 }
 late_initcall(rdu2_enable_front_panel_usb);
+
+static int rdu2_devices_init(void)
+{
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return 0;
+
+	barebox_set_hostname("rdu2");
+
+	imx6_bbu_internal_spi_i2c_register_handler("SPI", "/dev/m25p0.barebox",
+						   BBU_HANDLER_FLAG_DEFAULT);
+
+	imx6_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc3", 0);
+
+	return 0;
+}
+device_initcall(rdu2_devices_init);
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount
new file mode 100644
index 000000000000..6c04eb48a1a7
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth1 && mount -t tftp $eth1.serverip /mnt/tftp'
+
+# automount nfs server's nfsroot
+
+mkdir -p /mnt/nfs
+automount /mnt/nfs 'ifup eth1 && mount -t nfs ${eth1.serverip}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
+
+
+# FAT on usb disk example
+
+#mkdir -p /mnt/fat
+#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 55af3f964e49..5b255e9aaa57 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -46,6 +46,11 @@
 / {
 	chosen {
 		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &nor_flash, "partname:barebox-environment";
+		};
 	};
 
 	mdio {
@@ -389,7 +394,12 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x100000>;
+			reg = <0x0 0xc0000>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xc0000 0x40000>;
 		};
 	};
 };
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

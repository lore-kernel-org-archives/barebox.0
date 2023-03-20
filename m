Delivery-date: Mon, 20 Mar 2023 16:31:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHUC-007zMi-8B
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHU9-00028J-9F
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zlefcys9+NEx6tDZWeoHEGjYqpP9QX1R0ipNYnzwdlI=; b=Vc3EBTaBrWhwkx2XQAOfN3s+i8
	uZi0BxfC2suqOufEzKThR8DAkDZD9Esv/yeYRaCBJq1Z22YjLAWp+hG7C6RF2JyJx1WDl4yRrlo1H
	eNMrETdDFRMNlIIlcSrMKOdnRnlUdBkLlvEapJ2Tkn4myxsc4kMCtv65UKEH70fvI+ja3BcjQXjFE
	wY2HSKFaDtkOxHEkjtUvu/CXyqmnhgmhYZkJuUkJJ1y7Vv5xWCGH/C1oST0pMHvk+YDaia0w8d1E4
	awR2DBhqTRIqVOaWe3V6v11Gbna6OxSLDS7XQ+f6JOeuKUUNhdFoX/9f0RTIv5RZ2w9XsC9jCOmV5
	33hUNAmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSe-009Xuz-23;
	Mon, 20 Mar 2023 15:30:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009Xfb-2r
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:30:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-0000og-EY; Mon, 20 Mar 2023 16:29:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSC-005UYp-Mm; Mon, 20 Mar 2023 16:29:44 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dbzw-4k; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:27 +0100
Message-Id: <20230320152941.3155428-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082951_400672_E01D094C 
X-CRM114-Status: GOOD (  14.42  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/18] usb: move include files to place where Linux has them
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For easier patch merging and comparison with Linux move the usb
gadget files to where Linux has them. For now do a plain git mv
include/usb include/linux/usb, eventhough there might be some
files which are purely barebox specific.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/board.c                     |  2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c     |  2 +-
 arch/arm/boards/duckbill/board.c                   |  2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |  2 +-
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  2 +-
 arch/arm/boards/kindle-mx50/board.c                |  2 +-
 arch/arm/boards/module-mb7707/board.c              |  2 +-
 arch/arm/boards/panda/board.c                      |  2 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c      |  2 +-
 arch/arm/boards/protonic-imx6/board.c              |  2 +-
 arch/arm/boards/toshiba-ac100/board.c              |  2 +-
 commands/dfu.c                                     |  4 ++--
 commands/usb.c                                     |  2 +-
 commands/usbgadget.c                               |  6 +++---
 commands/usbserial.c                               |  2 +-
 common/usbgadget.c                                 |  6 +++---
 drivers/input/usb_kbd.c                            |  2 +-
 drivers/net/usb/asix.c                             |  4 ++--
 drivers/net/usb/ax88179_178a.c                     |  4 ++--
 drivers/net/usb/r8152.c                            |  4 ++--
 drivers/net/usb/r8152_fw.c                         |  4 ++--
 drivers/net/usb/smsc95xx.c                         |  4 ++--
 drivers/net/usb/usbnet.c                           |  4 ++--
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c         |  2 +-
 drivers/phy/phy-core.c                             |  2 +-
 drivers/phy/phy-stm32-usbphyc.c                    |  2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |  2 +-
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c |  2 +-
 drivers/phy/usb-nop-xceiv.c                        |  2 +-
 drivers/usb/core/common.c                          |  2 +-
 drivers/usb/core/hub.c                             |  6 +++---
 drivers/usb/core/of.c                              |  4 ++--
 drivers/usb/core/usb.c                             |  4 ++--
 drivers/usb/dwc2/dwc2.h                            |  6 +++---
 drivers/usb/dwc2/gadget.c                          |  2 +-
 drivers/usb/dwc3/core.h                            |  6 +++---
 drivers/usb/dwc3/ep0.c                             |  2 +-
 drivers/usb/dwc3/gadget.c                          |  4 ++--
 drivers/usb/dwc3/gadget.h                          |  2 +-
 drivers/usb/gadget/composite.c                     |  2 +-
 drivers/usb/gadget/config.c                        |  6 +++---
 drivers/usb/gadget/epautoconf.c                    |  4 ++--
 drivers/usb/gadget/function/dfu.c                  |  8 ++++----
 drivers/usb/gadget/function/f_acm.c                |  4 ++--
 drivers/usb/gadget/function/f_fastboot.c           |  2 +-
 drivers/usb/gadget/function/f_mass_storage.c       |  6 +++---
 drivers/usb/gadget/function/storage_common.h       |  4 ++--
 drivers/usb/gadget/function/u_serial.c             |  2 +-
 drivers/usb/gadget/function/u_serial.h             |  4 ++--
 drivers/usb/gadget/functions.c                     |  2 +-
 drivers/usb/gadget/legacy/multi.c                  |  2 +-
 drivers/usb/gadget/legacy/serial.c                 |  8 ++++----
 drivers/usb/gadget/udc/at91_udc.c                  |  4 ++--
 drivers/usb/gadget/udc/core.c                      |  4 ++--
 drivers/usb/gadget/udc/fsl_udc.c                   |  6 +++---
 drivers/usb/gadget/udc/fsl_udc_pbl.c               |  2 +-
 drivers/usb/gadget/udc/pxa27x_udc.c                |  4 ++--
 drivers/usb/gadget/usbstring.c                     |  4 ++--
 drivers/usb/host/ehci-atmel.c                      |  6 +++---
 drivers/usb/host/ehci-hcd.c                        |  6 +++---
 drivers/usb/host/ehci-omap.c                       |  2 +-
 drivers/usb/host/ohci-at91.c                       |  4 ++--
 drivers/usb/host/ohci-hcd.c                        |  4 ++--
 drivers/usb/host/xhci-mem.c                        |  4 ++--
 drivers/usb/host/xhci-ring.c                       |  4 ++--
 drivers/usb/host/xhci.c                            |  4 ++--
 drivers/usb/imx/chipidea-imx.c                     | 12 ++++++------
 drivers/usb/imx/imx-usb-misc.c                     |  2 +-
 drivers/usb/imx/imx-usb-phy.c                      |  2 +-
 drivers/usb/misc/onboard_usb_hub.c                 |  2 +-
 drivers/usb/musb/musb_barebox.c                    |  4 ++--
 drivers/usb/musb/musb_core.c                       |  4 ++--
 drivers/usb/musb/musb_core.h                       |  4 ++--
 drivers/usb/musb/musb_dsps.c                       |  4 ++--
 drivers/usb/musb/musb_gadget.h                     |  2 +-
 drivers/usb/musb/musb_host.h                       |  2 +-
 drivers/usb/otg/otgdev.c                           |  2 +-
 drivers/usb/otg/twl4030.c                          |  2 +-
 drivers/usb/otg/ulpi.c                             |  2 +-
 drivers/usb/storage/usb.c                          |  4 ++--
 drivers/usb/storage/usb.h                          |  2 +-
 include/{ => linux}/usb/cdc.h                      |  0
 include/{ => linux}/usb/ch9.h                      |  0
 include/{ => linux}/usb/chipidea-imx.h             |  2 +-
 include/{ => linux}/usb/composite.h                |  4 ++--
 include/{ => linux}/usb/dfu.h                      |  2 +-
 include/{ => linux}/usb/ehci.h                     |  0
 include/{ => linux}/usb/fastboot.h                 |  2 +-
 include/{ => linux}/usb/fsl_usb2.h                 |  0
 include/{ => linux}/usb/gadget-multi.h             |  8 ++++----
 include/{ => linux}/usb/gadget.h                   |  2 +-
 include/{ => linux}/usb/mass_storage.h             |  2 +-
 include/{ => linux}/usb/musb.h                     |  0
 include/{ => linux}/usb/phy.h                      |  2 +-
 include/{ => linux}/usb/storage.h                  |  0
 include/{ => linux}/usb/twl4030.h                  |  0
 include/{ => linux}/usb/ulpi.h                     |  0
 include/{ => linux}/usb/usb.h                      |  6 +++---
 include/{ => linux}/usb/usb_defs.h                 |  0
 include/{ => linux}/usb/usbnet.h                   |  0
 include/{ => linux}/usb/usbroothubdes.h            |  0
 include/{ => linux}/usb/usbserial.h                |  0
 include/{ => linux}/usb/xhci.h                     |  0
 include/mach/imx/devices.h                         |  2 +-
 include/{ => uapi/linux}/usb/ch11.h                |  0
 105 files changed, 156 insertions(+), 156 deletions(-)
 rename include/{ => linux}/usb/cdc.h (100%)
 rename include/{ => linux}/usb/ch9.h (100%)
 rename include/{ => linux}/usb/chipidea-imx.h (98%)
 rename include/{ => linux}/usb/composite.h (99%)
 rename include/{ => linux}/usb/dfu.h (96%)
 rename include/{ => linux}/usb/ehci.h (100%)
 rename include/{ => linux}/usb/fastboot.h (93%)
 rename include/{ => linux}/usb/fsl_usb2.h (100%)
 rename include/{ => linux}/usb/gadget-multi.h (88%)
 rename include/{ => linux}/usb/gadget.h (99%)
 rename include/{ => linux}/usb/mass_storage.h (94%)
 rename include/{ => linux}/usb/musb.h (100%)
 rename include/{ => linux}/usb/phy.h (99%)
 rename include/{ => linux}/usb/storage.h (100%)
 rename include/{ => linux}/usb/twl4030.h (100%)
 rename include/{ => linux}/usb/ulpi.h (100%)
 rename include/{ => linux}/usb/usb.h (99%)
 rename include/{ => linux}/usb/usb_defs.h (100%)
 rename include/{ => linux}/usb/usbnet.h (100%)
 rename include/{ => linux}/usb/usbroothubdes.h (100%)
 rename include/{ => linux}/usb/usbserial.h (100%)
 rename include/{ => linux}/usb/xhci.h (100%)
 rename include/{ => uapi/linux}/usb/ch11.h (100%)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 53a93e1ed3..c8788f8128 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -18,7 +18,7 @@
 #include <mach/omap/omap3-devices.h>
 #include <i2c/i2c.h>
 #include <linux/err.h>
-#include <usb/ehci.h>
+#include <linux/usb/ehci.h>
 #include <asm/barebox-arm.h>
 
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 9f51d2253b..840fd22ac1 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -9,7 +9,7 @@
 #include <errno.h>
 #include <mci.h>
 #include <linux/sizes.h>
-#include <usb/ehci.h>
+#include <linux/usb/ehci.h>
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
diff --git a/arch/arm/boards/duckbill/board.c b/arch/arm/boards/duckbill/board.c
index 4e8f564967..edb9320f0e 100644
--- a/arch/arm/boards/duckbill/board.c
+++ b/arch/arm/boards/duckbill/board.c
@@ -17,7 +17,7 @@
 #include <mach/mxs/ocotp.h>
 #include <mach/mxs/devices.h>
 #include <mach/mxs/usb.h>
-#include <usb/fsl_usb2.h>
+#include <linux/usb/fsl_usb2.h>
 
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index b5dbe5f41a..d831bffbd9 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -13,7 +13,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/mxs/imx-regs.h>
 #include <mach/mxs/mci.h>
-#include <usb/fsl_usb2.h>
+#include <linux/usb/fsl_usb2.h>
 #include <mach/mxs/usb.h>
 #include <mach/mxs/iomux.h>
 
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index b164364560..3a7e5354fc 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -18,7 +18,7 @@
 #include <mci.h>
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
-#include <usb/ehci.h>
+#include <linux/usb/ehci.h>
 #include <mach/mxs/usb.h>
 #include <generated/mach-types.h>
 #include <mach/mxs/imx-regs.h>
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index b7b51d6209..4abd77727c 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -15,7 +15,7 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/sizes.h>
-#include <usb/fsl_usb2.h>
+#include <linux/usb/fsl_usb2.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/imx50-regs.h>
 #include <mach/imx/imx5.h>
diff --git a/arch/arm/boards/module-mb7707/board.c b/arch/arm/boards/module-mb7707/board.c
index 122348210d..366baddf81 100644
--- a/arch/arm/boards/module-mb7707/board.c
+++ b/arch/arm/boards/module-mb7707/board.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
-#include <usb/ehci.h>
+#include <linux/usb/ehci.h>
 #include <mach/uemd/hardware.h>
 
 static int hostname_init(void)
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 276aeb287d..f182b14987 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -14,7 +14,7 @@
 #include <mach/omap/sys_info.h>
 #include <mach/omap/syslib.h>
 #include <mach/omap/control.h>
-#include <usb/ehci.h>
+#include <linux/usb/ehci.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index e64ef72026..924598d9c7 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -20,7 +20,7 @@
 #include <mach/imx/imx-pll.h>
 #include <platform_data/imxfb.h>
 #include <asm/mmu.h>
-#include <usb/ulpi.h>
+#include <linux/usb/ulpi.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/iomux-mx27.h>
 #include <mach/imx/devices-imx27.h>
diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 97d8bb87b2..a8938a662b 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -24,7 +24,7 @@
 #include <sys/mount.h>
 #include <sys/stat.h>
 #include <unistd.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 
 #define GPIO_HW_REV_ID  {\
 	{IMX_GPIO_NR(2, 8), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "rev_id0"}, \
diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
index 0248bf1cc5..7fb70ca6c9 100644
--- a/arch/arm/boards/toshiba-ac100/board.c
+++ b/arch/arm/boards/toshiba-ac100/board.c
@@ -5,7 +5,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <usb/ehci.h>
+#include <linux/usb/ehci.h>
 #include <mach/tegra/iomap.h>
 
 static struct ehci_platform_data ehci_pdata = {
diff --git a/commands/dfu.c b/commands/dfu.c
index 1734947fe0..2116747f68 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -10,8 +10,8 @@
 #include <getopt.h>
 #include <fs.h>
 #include <xfuncs.h>
-#include <usb/dfu.h>
-#include <usb/gadget-multi.h>
+#include <linux/usb/dfu.h>
+#include <linux/usb/gadget-multi.h>
 #include <linux/err.h>
 
 /* dfu /dev/self0(bootloader)sr,/dev/nand0.root.bb(root)
diff --git a/commands/usb.c b/commands/usb.c
index ca8d3e0d52..0588ba6968 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <command.h>
 #include <complete.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 #include <getopt.h>
 
 /* shows the device tree recursively */
diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 290f33eff3..d0dcde69ce 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -12,9 +12,9 @@
 #include <getopt.h>
 #include <fs.h>
 #include <xfuncs.h>
-#include <usb/usbserial.h>
-#include <usb/dfu.h>
-#include <usb/gadget-multi.h>
+#include <linux/usb/usbserial.h>
+#include <linux/usb/dfu.h>
+#include <linux/usb/gadget-multi.h>
 
 static int do_usbgadget(int argc, char *argv[])
 {
diff --git a/commands/usbserial.c b/commands/usbserial.c
index 567018c233..17a4afec42 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -11,7 +11,7 @@
 #include <getopt.h>
 #include <fs.h>
 #include <xfuncs.h>
-#include <usb/usbserial.h>
+#include <linux/usb/usbserial.h>
 
 static int do_usbserial(int argc, char *argv[])
 {
diff --git a/common/usbgadget.c b/common/usbgadget.c
index 59b9e635f4..3713551163 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -12,9 +12,9 @@
 #include <getopt.h>
 #include <fs.h>
 #include <xfuncs.h>
-#include <usb/usbserial.h>
-#include <usb/dfu.h>
-#include <usb/gadget-multi.h>
+#include <linux/usb/usbserial.h>
+#include <linux/usb/dfu.h>
+#include <linux/usb/gadget-multi.h>
 #include <globalvar.h>
 #include <magicvar.h>
 #include <system-partitions.h>
diff --git a/drivers/input/usb_kbd.c b/drivers/input/usb_kbd.c
index d950bd5039..86b48db2a7 100644
--- a/drivers/input/usb_kbd.c
+++ b/drivers/input/usb_kbd.c
@@ -10,7 +10,7 @@
 #include <init.h>
 #include <clock.h>
 #include <poller.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 #include <string.h>
 #include <dma.h>
 #include <input/input.h>
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 2d7114e5b1..9d34beab0d 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -3,8 +3,8 @@
 #include <init.h>
 #include <net.h>
 #include <linux/phy.h>
-#include <usb/usb.h>
-#include <usb/usbnet.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usbnet.h>
 #include <errno.h>
 #include <malloc.h>
 #include <asm/byteorder.h>
diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
index fddb187144..318eb9be02 100644
--- a/drivers/net/usb/ax88179_178a.c
+++ b/drivers/net/usb/ax88179_178a.c
@@ -8,8 +8,8 @@
 #include <init.h>
 #include <net.h>
 #include <linux/phy.h>
-#include <usb/usb.h>
-#include <usb/usbnet.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usbnet.h>
 #include <errno.h>
 #include <malloc.h>
 #include <poller.h>
diff --git a/drivers/net/usb/r8152.c b/drivers/net/usb/r8152.c
index 0928887784..2511c524cd 100644
--- a/drivers/net/usb/r8152.c
+++ b/drivers/net/usb/r8152.c
@@ -8,8 +8,8 @@
 #include <linux/ethtool.h>
 #include <linux/mii.h>
 #include <linux/phy.h>
-#include <usb/usb.h>
-#include <usb/usbnet.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usbnet.h>
 #include "r8152.h"
 
 #define R8152_TX_BURST_SIZE	512
diff --git a/drivers/net/usb/r8152_fw.c b/drivers/net/usb/r8152_fw.c
index ee5f7c48e4..a6d61ac0d6 100644
--- a/drivers/net/usb/r8152_fw.c
+++ b/drivers/net/usb/r8152_fw.c
@@ -2,8 +2,8 @@
 /* Copyright (c) 2015 Realtek Semiconductor Corp. All rights reserved. */
 
 #include <common.h>
-#include <usb/usb.h>
-#include <usb/usbnet.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usbnet.h>
 #include "r8152.h"
 
 static const u8 r8152b_pla_patch_a[] = {
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index 3c5bd1e4ee..b6f81cfab8 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -5,8 +5,8 @@
 #include <command.h>
 #include <init.h>
 #include <net.h>
-#include <usb/usb.h>
-#include <usb/usbnet.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usbnet.h>
 #include <malloc.h>
 #include <asm/byteorder.h>
 #include <errno.h>
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 4818079523..3c3da3171b 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
-#include <usb/usb.h>
-#include <usb/usbnet.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usbnet.h>
 #include <asm/byteorder.h>
 #include <errno.h>
 #include <malloc.h>
diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index e0d7d7818c..c664894cdd 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -13,7 +13,7 @@
 #include <malloc.h>
 #include <of_device.h>
 #include <of.h>
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 
 
 #define PHY_CTRL0			0x0
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d3a7847ee8..a5dd32e666 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -11,7 +11,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <linux/phy/phy.h>
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 
 static LIST_HEAD(phy_provider_list);
 static int phy_ida;
diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index db4ccef920..3ccbc7b902 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -14,7 +14,7 @@
 #include <linux/phy/phy.h>
 #include <linux/reset.h>
 #include <linux/math64.h>
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 
 #define STM32_USBPHYC_PLL	0x0
 #define STM32_USBPHYC_MISC	0x8
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index ab7d65389c..1f77d430a6 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -11,7 +11,7 @@
 #include <errno.h>
 #include <driver.h>
 #include <malloc.h>
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 65869efd3f..bd5dff954e 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -12,7 +12,7 @@
 #include <errno.h>
 #include <driver.h>
 #include <malloc.h>
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index 7fa412cab6..80141f9def 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -9,7 +9,7 @@
 #include <errno.h>
 #include <driver.h>
 #include <malloc.h>
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/usb/core/common.c b/drivers/usb/core/common.c
index d562b963be..61ccc13024 100644
--- a/drivers/usb/core/common.c
+++ b/drivers/usb/core/common.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
-#include <usb/ch9.h>
+#include <linux/usb/ch9.h>
 
 static const char *const speed_names[] = {
 	[USB_SPEED_UNKNOWN] = "UNKNOWN",
diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 8c85b93420..650af0e884 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -9,9 +9,9 @@
 #include <init.h>
 #include <malloc.h>
 #include <errno.h>
-#include <usb/phy.h>
-#include <usb/usb.h>
-#include <usb/usb_defs.h>
+#include <linux/usb/phy.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usb_defs.h>
 
 #include "usb.h"
 
diff --git a/drivers/usb/core/of.c b/drivers/usb/core/of.c
index acf95320c0..25203c6064 100644
--- a/drivers/usb/core/of.c
+++ b/drivers/usb/core/of.c
@@ -4,8 +4,8 @@
  */
 
 #include <common.h>
-#include <usb/usb.h>
-#include <usb/phy.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/phy.h>
 #include <of.h>
 
 static const char *usb_dr_modes[] = {
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index a974614c06..178ddbbca5 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -38,8 +38,8 @@
 #include <init.h>
 #include <dma.h>
 
-#include <usb/usb.h>
-#include <usb/ch9.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/ch9.h>
 
 #include "usb.h"
 
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 3ecc359f8b..15d4b69759 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
-#include <usb/usb.h>
-#include <usb/usb_defs.h>
-#include <usb/gadget.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usb_defs.h>
+#include <linux/usb/gadget.h>
 #include <linux/phy/phy.h>
 
 #include "regs.h"
diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 7070485410..55d18637c7 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 #include <dma.h>
-#include <usb/gadget.h>
+#include <linux/usb/gadget.h>
 #include "dwc2.h"
 
 #define to_dwc2 gadget_to_dwc2
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 5ad1fea8e0..38001298b7 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -12,9 +12,9 @@
 #define __DRIVERS_USB_DWC3_CORE_H
 
 #include <linux/spinlock.h>
-#include <usb/usb.h>
-#include <usb/phy.h>
-#include <usb/gadget.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/phy.h>
+#include <linux/usb/gadget.h>
 
 #define DWC3_MSG_MAX	500
 
diff --git a/drivers/usb/dwc3/ep0.c b/drivers/usb/dwc3/ep0.c
index c0e316e14f..f4864d0388 100644
--- a/drivers/usb/dwc3/ep0.c
+++ b/drivers/usb/dwc3/ep0.c
@@ -18,7 +18,7 @@
 #include <linux/kernel.h>
 #include <linux/list.h>
 
-#include <usb/gadget.h>
+#include <linux/usb/gadget.h>
 
 #include "core.h"
 #include "gadget.h"
diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index 8ec1268a22..1aec73c7d9 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -17,8 +17,8 @@
 #include <io.h>
 #include <linux/list.h>
 
-#include <usb/gadget.h>
-#include <usb/ch9.h>
+#include <linux/usb/gadget.h>
+#include <linux/usb/ch9.h>
 
 #include "core.h"
 #include "gadget.h"
diff --git a/drivers/usb/dwc3/gadget.h b/drivers/usb/dwc3/gadget.h
index 47c2d5b955..36446b98ce 100644
--- a/drivers/usb/dwc3/gadget.h
+++ b/drivers/usb/dwc3/gadget.h
@@ -18,7 +18,7 @@
 #ifndef __DRIVERS_USB_DWC3_GADGET_H
 #define __DRIVERS_USB_DWC3_GADGET_H
 
-#include <usb/gadget.h>
+#include <linux/usb/gadget.h>
 #include <linux/list.h>
 #include "io.h"
 
diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 396e7387a8..88ae191ce0 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -12,7 +12,7 @@
 #include <dma.h>
 #include <linux/err.h>
 #include <linux/bitmap.h>
-#include <usb/composite.h>
+#include <linux/usb/composite.h>
 #include <asm/unaligned.h>
 #include <asm/byteorder.h>
 
diff --git a/drivers/usb/gadget/config.c b/drivers/usb/gadget/config.c
index 369eb2ba5e..979cfafa70 100644
--- a/drivers/usb/gadget/config.c
+++ b/drivers/usb/gadget/config.c
@@ -7,9 +7,9 @@
 
 #include <common.h>
 
-#include <usb/ch9.h>
-#include <usb/gadget.h>
-#include <usb/composite.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
+#include <linux/usb/composite.h>
 
 /**
  * usb_descriptor_fillbuf - fill buffer with descriptors
diff --git a/drivers/usb/gadget/epautoconf.c b/drivers/usb/gadget/epautoconf.c
index 2f1b9d1a0b..ff16abaf12 100644
--- a/drivers/usb/gadget/epautoconf.c
+++ b/drivers/usb/gadget/epautoconf.c
@@ -11,8 +11,8 @@
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 
-#include <usb/ch9.h>
-#include <usb/gadget.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
 
 #define gadget_is_pxa(g)                (!strcmp("pxa25x_udc", (g)->name))
 
diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 0b7ca82c4a..930a10b766 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -26,15 +26,15 @@
 
 #include <dma.h>
 #include <asm/byteorder.h>
-#include <usb/composite.h>
+#include <linux/usb/composite.h>
 #include <linux/types.h>
 #include <linux/list.h>
-#include <usb/gadget.h>
+#include <linux/usb/gadget.h>
 #include <linux/stat.h>
 #include <libfile.h>
 #include <linux/err.h>
-#include <usb/ch9.h>
-#include <usb/dfu.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/dfu.h>
 #include <config.h>
 #include <common.h>
 #include <malloc.h>
diff --git a/drivers/usb/gadget/function/f_acm.c b/drivers/usb/gadget/function/f_acm.c
index 3d2595edd7..1210622d96 100644
--- a/drivers/usb/gadget/function/f_acm.c
+++ b/drivers/usb/gadget/function/f_acm.c
@@ -12,11 +12,11 @@
 /* #define VERBOSE_DEBUG */
 
 #include <common.h>
-#include <usb/cdc.h>
+#include <linux/usb/cdc.h>
 #include <linux/err.h>
 #include <linux/spinlock.h>
 #include <asm/byteorder.h>
-#include <usb/composite.h>
+#include <linux/usb/composite.h>
 
 #include "u_serial.h"
 
diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 078b37ce54..499262a64b 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -25,7 +25,7 @@
 #include <unistd.h>
 #include <progress.h>
 #include <fastboot.h>
-#include <usb/fastboot.h>
+#include <linux/usb/fastboot.h>
 
 #define FASTBOOT_INTERFACE_CLASS	0xff
 #define FASTBOOT_INTERFACE_SUB_CLASS	0x42
diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index 1c26c4d996..61f369bd07 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -225,12 +225,12 @@
 #include <scsi.h>
 
 #include <linux/err.h>
-#include <usb/mass_storage.h>
+#include <linux/usb/mass_storage.h>
 
 #include <asm/unaligned.h>
 #include <linux/bitops.h>
-#include <usb/gadget.h>
-#include <usb/composite.h>
+#include <linux/usb/gadget.h>
+#include <linux/usb/composite.h>
 #include <linux/bitmap.h>
 #include <linux/completion.h>
 #include <bthread.h>
diff --git a/drivers/usb/gadget/function/storage_common.h b/drivers/usb/gadget/function/storage_common.h
index bd499c9e03..3b98c82ee3 100644
--- a/drivers/usb/gadget/function/storage_common.h
+++ b/drivers/usb/gadget/function/storage_common.h
@@ -4,9 +4,9 @@
 #define USB_STORAGE_COMMON_H
 
 #include <driver.h>
-#include <usb/storage.h>
+#include <linux/usb/storage.h>
 #include <asm/unaligned.h>
-#include <usb/mass_storage.h>
+#include <linux/usb/mass_storage.h>
 
 #ifndef DEBUG
 #undef VERBOSE_DEBUG
diff --git a/drivers/usb/gadget/function/u_serial.c b/drivers/usb/gadget/function/u_serial.c
index 2ce3f1c791..ac7a0b589d 100644
--- a/drivers/usb/gadget/function/u_serial.c
+++ b/drivers/usb/gadget/function/u_serial.c
@@ -16,7 +16,7 @@
 
 #include <common.h>
 #include <complete.h>
-#include <usb/cdc.h>
+#include <linux/usb/cdc.h>
 #include <kfifo.h>
 #include <clock.h>
 #include <linux/err.h>
diff --git a/drivers/usb/gadget/function/u_serial.h b/drivers/usb/gadget/function/u_serial.h
index 80450ccc86..44fcace030 100644
--- a/drivers/usb/gadget/function/u_serial.h
+++ b/drivers/usb/gadget/function/u_serial.h
@@ -9,8 +9,8 @@
 #ifndef __U_SERIAL_H
 #define __U_SERIAL_H
 
-#include <usb/composite.h>
-#include <usb/cdc.h>
+#include <linux/usb/composite.h>
+#include <linux/usb/cdc.h>
 
 #define MAX_U_SERIAL_PORTS	4
 
diff --git a/drivers/usb/gadget/functions.c b/drivers/usb/gadget/functions.c
index 9b08938a33..7a57915007 100644
--- a/drivers/usb/gadget/functions.c
+++ b/drivers/usb/gadget/functions.c
@@ -2,7 +2,7 @@
 #include <common.h>
 #include <linux/err.h>
 
-#include <usb/composite.h>
+#include <linux/usb/composite.h>
 
 static LIST_HEAD(func_list);
 
diff --git a/drivers/usb/gadget/legacy/multi.c b/drivers/usb/gadget/legacy/multi.c
index 6225e9a313..2c9a784cbe 100644
--- a/drivers/usb/gadget/legacy/multi.c
+++ b/drivers/usb/gadget/legacy/multi.c
@@ -9,7 +9,7 @@
  */
 
 #include <common.h>
-#include <usb/gadget-multi.h>
+#include <linux/usb/gadget-multi.h>
 #include <linux/err.h>
 
 #include "u_serial.h"
diff --git a/drivers/usb/gadget/legacy/serial.c b/drivers/usb/gadget/legacy/serial.c
index 6321f3f207..46c41f6dea 100644
--- a/drivers/usb/gadget/legacy/serial.c
+++ b/drivers/usb/gadget/legacy/serial.c
@@ -11,10 +11,10 @@
 #include <errno.h>
 #include <init.h>
 #include <linux/err.h>
-#include <usb/ch9.h>
-#include <usb/gadget.h>
-#include <usb/composite.h>
-#include <usb/usbserial.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
+#include <linux/usb/composite.h>
+#include <linux/usb/usbserial.h>
 #include <asm/byteorder.h>
 
 #include "u_serial.h"
diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
index fc5f24021d..2a3d5765de 100644
--- a/drivers/usb/gadget/udc/at91_udc.c
+++ b/drivers/usb/gadget/udc/at91_udc.c
@@ -16,8 +16,8 @@
 #include <gpio.h>
 #include <io.h>
 #include <clock.h>
-#include <usb/ch9.h>
-#include <usb/gadget.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
 #include <of_gpio.h>
 
 #include <linux/list.h>
diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
index 30b17dbc5a..ec3ae603e1 100644
--- a/drivers/usb/gadget/udc/core.c
+++ b/drivers/usb/gadget/udc/core.c
@@ -10,8 +10,8 @@
 #include <driver.h>
 #include <init.h>
 #include <poller.h>
-#include <usb/ch9.h>
-#include <usb/gadget.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
 
 /**
  * struct usb_udc - describes one usb device controller
diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index 2f2f4caebb..06768bf1d0 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -4,9 +4,9 @@
 #include <dma.h>
 #include <init.h>
 #include <clock.h>
-#include <usb/ch9.h>
-#include <usb/gadget.h>
-#include <usb/fsl_usb2.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
+#include <linux/usb/fsl_usb2.h>
 #include <io.h>
 #include <asm/byteorder.h>
 #include <linux/err.h>
diff --git a/drivers/usb/gadget/udc/fsl_udc_pbl.c b/drivers/usb/gadget/udc/fsl_udc_pbl.c
index 218d61db3c..6a4e0557fc 100644
--- a/drivers/usb/gadget/udc/fsl_udc_pbl.c
+++ b/drivers/usb/gadget/udc/fsl_udc_pbl.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <usb/ch9.h>
+#include <linux/usb/ch9.h>
 #include <soc/fsl/fsl_udc.h>
 #include <mach/imx/imx8mm-regs.h>
 #include <mach/imx/imx6-regs.h>
diff --git a/drivers/usb/gadget/udc/pxa27x_udc.c b/drivers/usb/gadget/udc/pxa27x_udc.c
index e5e2ca2b7c..ae02a1bede 100644
--- a/drivers/usb/gadget/udc/pxa27x_udc.c
+++ b/drivers/usb/gadget/udc/pxa27x_udc.c
@@ -14,8 +14,8 @@
 #include <gpio.h>
 #include <init.h>
 
-#include <usb/ch9.h>
-#include <usb/gadget.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
 
 #include "pxa27x_udc.h"
 #include <mach/pxa/udc_pxa2xx.h>
diff --git a/drivers/usb/gadget/usbstring.c b/drivers/usb/gadget/usbstring.c
index 474c666e53..4a0f7c09b9 100644
--- a/drivers/usb/gadget/usbstring.c
+++ b/drivers/usb/gadget/usbstring.c
@@ -6,8 +6,8 @@
 #include <common.h>
 #include <errno.h>
 
-#include <usb/ch9.h>
-#include <usb/gadget.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
 
 static inline void put_unaligned_le16(u16 val, u8 *p)
 {
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 17bc896a8b..67ba7cbcc1 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -8,9 +8,9 @@
 #include <linux/err.h>
 #include <driver.h>
 #include <init.h>
-#include <usb/usb.h>
-#include <usb/usb_defs.h>
-#include <usb/ehci.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usb_defs.h>
+#include <linux/usb/ehci.h>
 #include <errno.h>
 #include <io.h>
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 53d06a46fa..a0b8b807b6 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -10,7 +10,7 @@
 #include <common.h>
 #include <dma.h>
 #include <asm/byteorder.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 #include <io.h>
 #include <malloc.h>
 #include <driver.h>
@@ -19,7 +19,7 @@
 #include <clock.h>
 #include <errno.h>
 #include <of.h>
-#include <usb/ehci.h>
+#include <linux/usb/ehci.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
 #include <linux/clk.h>
@@ -510,7 +510,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 }
 
 #if defined(CONFIG_MACH_EFIKA_MX_SMARTBOOK) && defined(CONFIG_USB_ULPI)
-#include <usb/ulpi.h>
+#include <linux/usb/ulpi.h>
 /*
  * Add support for setting CHRGVBUS to workaround a hardware bug on efika mx/sb
  * boards.
diff --git a/drivers/usb/host/ehci-omap.c b/drivers/usb/host/ehci-omap.c
index dd18c4af39..e364796a1a 100644
--- a/drivers/usb/host/ehci-omap.c
+++ b/drivers/usb/host/ehci-omap.c
@@ -10,7 +10,7 @@
 /*-------------------------------------------------------------------------*/
 
 #include <mfd/twl4030.h>
-#include <usb/twl4030.h>
+#include <linux/usb/twl4030.h>
 #include <mach/omap/ehci.h>
 #include <common.h>
 #include <io.h>
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index b1416a20d3..a7caf7ea04 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -7,8 +7,8 @@
 #include <linux/clk.h>
 #include <driver.h>
 #include <init.h>
-#include <usb/usb.h>
-#include <usb/usb_defs.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usb_defs.h>
 #include <errno.h>
 #include <gpio.h>
 #include <of_gpio.h>
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index fcec5eee5e..e4b69dcf62 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -30,8 +30,8 @@
 #include <clock.h>
 #include <dma.h>
 #include <malloc.h>
-#include <usb/usb.h>
-#include <usb/usb_defs.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usb_defs.h>
 #include <init.h>
 #include <errno.h>
 #include <linux/err.h>
diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index ae20560eb5..f975b1c0a9 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -20,8 +20,8 @@
 #include <io.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
-#include <usb/usb.h>
-#include <usb/xhci.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/xhci.h>
 #include <asm/unaligned.h>
 
 #include "xhci.h"
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 60764222af..4654ab1486 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -19,8 +19,8 @@
 #include <io.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
-#include <usb/usb.h>
-#include <usb/xhci.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/xhci.h>
 #include <asm/unaligned.h>
 
 #include "xhci.h"
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 55f51ca951..f5cc6dac57 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -24,8 +24,8 @@
 #include <init.h>
 #include <io.h>
 #include <linux/err.h>
-#include <usb/usb.h>
-#include <usb/xhci.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/xhci.h>
 #include <asm/unaligned.h>
 
 #include "xhci.h"
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 2493e6d202..053a985a70 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -9,13 +9,13 @@
 #include <of.h>
 #include <errno.h>
 #include <driver.h>
-#include <usb/usb.h>
-#include <usb/ehci.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/ehci.h>
 #include <regulator.h>
-#include <usb/chipidea-imx.h>
-#include <usb/phy.h>
-#include <usb/ulpi.h>
-#include <usb/fsl_usb2.h>
+#include <linux/usb/chipidea-imx.h>
+#include <linux/usb/phy.h>
+#include <linux/usb/ulpi.h>
+#include <linux/usb/fsl_usb2.h>
 #include <linux/err.h>
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index bd91ac2e57..b4d7011d5c 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -9,7 +9,7 @@
 #include <io.h>
 #include <of.h>
 #include <errno.h>
-#include <usb/chipidea-imx.h>
+#include <linux/usb/chipidea-imx.h>
 #include <mach/imx/imx6-regs.h>
 #include <mach/imx/iomux-mx6.h>
 
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 628e569820..1e9698b98a 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -10,7 +10,7 @@
 #include <errno.h>
 #include <driver.h>
 #include <malloc.h>
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
index 0b847f06ad..b5c68098fd 100644
--- a/drivers/usb/misc/onboard_usb_hub.c
+++ b/drivers/usb/misc/onboard_usb_hub.c
@@ -12,7 +12,7 @@
 #include <linux/printk.h>
 #include <of_device.h>
 #include <regulator.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 
 #include "onboard_usb_hub.h"
 
diff --git a/drivers/usb/musb/musb_barebox.c b/drivers/usb/musb/musb_barebox.c
index 357a8f4281..81fdd6338f 100644
--- a/drivers/usb/musb/musb_barebox.c
+++ b/drivers/usb/musb/musb_barebox.c
@@ -2,8 +2,8 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <usb/musb.h>
-#include <usb/usb.h>
+#include <linux/usb/musb.h>
+#include <linux/usb/usb.h>
 #include <linux/types.h>
 #include <linux/err.h>
 #include <linux/barebox-wrapper.h>
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index ab825553b5..76622b4d55 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -67,8 +67,8 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <usb/musb.h>
-#include <usb/usb.h>
+#include <linux/usb/musb.h>
+#include <linux/usb/usb.h>
 #include <linux/types.h>
 #include <linux/err.h>
 #include <linux/barebox-wrapper.h>
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index a4e97c989b..d954719161 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -12,8 +12,8 @@
 
 #include <poller.h>
 #include <notifier.h>
-#include <usb/usb.h>
-#include <usb/phy.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/phy.h>
 #include <linux/spinlock.h>
 
 struct musb;
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 910ab347aa..b677760796 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -17,8 +17,8 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <usb/usb.h>
-#include <usb/musb.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/musb.h>
 #include <malloc.h>
 #include <linux/err.h>
 #include <linux/barebox-wrapper.h>
diff --git a/drivers/usb/musb/musb_gadget.h b/drivers/usb/musb/musb_gadget.h
index af81f062e6..bbd1a35880 100644
--- a/drivers/usb/musb/musb_gadget.h
+++ b/drivers/usb/musb/musb_gadget.h
@@ -11,7 +11,7 @@
 #define __MUSB_GADGET_H
 
 #include <linux/list.h>
-#include <usb/gadget.h>
+#include <linux/usb/gadget.h>
 
 #if IS_ENABLED(CONFIG_USB_MUSB_GADGET)
 extern int musb_g_ep0_irq(struct musb *);
diff --git a/drivers/usb/musb/musb_host.h b/drivers/usb/musb/musb_host.h
index 7a7c366521..5585f2e3b5 100644
--- a/drivers/usb/musb/musb_host.h
+++ b/drivers/usb/musb/musb_host.h
@@ -12,7 +12,7 @@
 
 //#include <linux/scatterlist.h>
 #include <linux/list.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 #include <asm/unaligned.h>
 
 /*
diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index 1ac1b642ac..d0a1cecc85 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <driver.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 
 struct otg_mode {
 	struct device dev;
diff --git a/drivers/usb/otg/twl4030.c b/drivers/usb/otg/twl4030.c
index cd82148b2e..5cbf734ded 100644
--- a/drivers/usb/otg/twl4030.c
+++ b/drivers/usb/otg/twl4030.c
@@ -24,7 +24,7 @@
  */
 
 #include <mfd/twl4030.h>
-#include <usb/twl4030.h>
+#include <linux/usb/twl4030.h>
 #include <clock.h>
 
 static int twl4030_usb_write(u8 address, u8 data)
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index aa9470b7ae..d231b49b08 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <io.h>
 #include <errno.h>
-#include <usb/ulpi.h>
+#include <linux/usb/ulpi.h>
 
 /* ULPIVIEW register bits */
 #define ULPIVW_WU		(1 << 31)	/* Wakeup */
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 5699fc14b0..103ae293a3 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -12,8 +12,8 @@
 #include <malloc.h>
 #include <errno.h>
 #include <scsi.h>
-#include <usb/usb.h>
-#include <usb/usb_defs.h>
+#include <linux/usb/usb.h>
+#include <linux/usb/usb_defs.h>
 
 #include <asm/unaligned.h>
 
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index b9626b303e..ae16d7b60b 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -10,7 +10,7 @@
 #ifndef _STORAGE_USB_H_
 #define _STORAGE_USB_H_
 
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 #include <block.h>
 #include <disks.h>
 #include <scsi.h>
diff --git a/include/usb/cdc.h b/include/linux/usb/cdc.h
similarity index 100%
rename from include/usb/cdc.h
rename to include/linux/usb/cdc.h
diff --git a/include/usb/ch9.h b/include/linux/usb/ch9.h
similarity index 100%
rename from include/usb/ch9.h
rename to include/linux/usb/ch9.h
diff --git a/include/usb/chipidea-imx.h b/include/linux/usb/chipidea-imx.h
similarity index 98%
rename from include/usb/chipidea-imx.h
rename to include/linux/usb/chipidea-imx.h
index b0b75d3bcb..99dbd407e5 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/linux/usb/chipidea-imx.h
@@ -3,7 +3,7 @@
 #ifndef __USB_CHIPIDEA_IMX_H
 #define __USB_CHIPIDEA_IMX_H
 
-#include <usb/phy.h>
+#include <linux/usb/phy.h>
 
 /*
  * POTSC flags
diff --git a/include/usb/composite.h b/include/linux/usb/composite.h
similarity index 99%
rename from include/usb/composite.h
rename to include/linux/usb/composite.h
index ec9abe7447..26e6fe5c47 100644
--- a/include/usb/composite.h
+++ b/include/linux/usb/composite.h
@@ -34,8 +34,8 @@
  * the composite model the host can use both functions at the same time.
  */
 #include <init.h>
-#include <usb/ch9.h>
-#include <usb/gadget.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
 #include <linux/log2.h>
 #include <linux/stringify.h>
 #include <linux/spinlock.h>
diff --git a/include/usb/dfu.h b/include/linux/usb/dfu.h
similarity index 96%
rename from include/usb/dfu.h
rename to include/linux/usb/dfu.h
index 81425f7c62..3bc4204500 100644
--- a/include/usb/dfu.h
+++ b/include/linux/usb/dfu.h
@@ -22,7 +22,7 @@
 
 #include <linux/types.h>
 #include <file-list.h>
-#include <usb/composite.h>
+#include <linux/usb/composite.h>
 
 struct f_dfu_opts {
 	struct usb_function_instance func_inst;
diff --git a/include/usb/ehci.h b/include/linux/usb/ehci.h
similarity index 100%
rename from include/usb/ehci.h
rename to include/linux/usb/ehci.h
diff --git a/include/usb/fastboot.h b/include/linux/usb/fastboot.h
similarity index 93%
rename from include/usb/fastboot.h
rename to include/linux/usb/fastboot.h
index 7dc445455a..d0dbd0b7b7 100644
--- a/include/usb/fastboot.h
+++ b/include/linux/usb/fastboot.h
@@ -3,7 +3,7 @@
 #ifndef _USB_FASTBOOT_H
 #define _USB_FASTBOOT_H
 
-#include <usb/composite.h>
+#include <linux/usb/composite.h>
 #include <fastboot.h>
 
 /**
diff --git a/include/usb/fsl_usb2.h b/include/linux/usb/fsl_usb2.h
similarity index 100%
rename from include/usb/fsl_usb2.h
rename to include/linux/usb/fsl_usb2.h
diff --git a/include/usb/gadget-multi.h b/include/linux/usb/gadget-multi.h
similarity index 88%
rename from include/usb/gadget-multi.h
rename to include/linux/usb/gadget-multi.h
index e67ca165c1..1027a10082 100644
--- a/include/usb/gadget-multi.h
+++ b/include/linux/usb/gadget-multi.h
@@ -4,10 +4,10 @@
 #define __USB_GADGET_MULTI_H
 
 #include <linux/types.h>
-#include <usb/fastboot.h>
-#include <usb/dfu.h>
-#include <usb/usbserial.h>
-#include <usb/mass_storage.h>
+#include <linux/usb/fastboot.h>
+#include <linux/usb/dfu.h>
+#include <linux/usb/usbserial.h>
+#include <linux/usb/mass_storage.h>
 
 struct f_multi_opts {
 	struct fastboot_opts fastboot_opts;
diff --git a/include/usb/gadget.h b/include/linux/usb/gadget.h
similarity index 99%
rename from include/usb/gadget.h
rename to include/linux/usb/gadget.h
index 830e3dfe83..746311fddd 100644
--- a/include/usb/gadget.h
+++ b/include/linux/usb/gadget.h
@@ -19,7 +19,7 @@
 #include <malloc.h>
 #include <driver.h>
 #include <linux/list.h>
-#include <usb/ch9.h>
+#include <linux/usb/ch9.h>
 
 struct usb_ep;
 
diff --git a/include/usb/mass_storage.h b/include/linux/usb/mass_storage.h
similarity index 94%
rename from include/usb/mass_storage.h
rename to include/linux/usb/mass_storage.h
index 7be665ee47..5bf7fea2f3 100644
--- a/include/usb/mass_storage.h
+++ b/include/linux/usb/mass_storage.h
@@ -7,7 +7,7 @@
 #ifndef __USB_MASS_STORAGE_H__
 #define __USB_MASS_STORAGE_H__
 
-#include <usb/composite.h>
+#include <linux/usb/composite.h>
 
 /* Wait at maximum 60 seconds for cable connection */
 #define UMS_CABLE_READY_TIMEOUT	60
diff --git a/include/usb/musb.h b/include/linux/usb/musb.h
similarity index 100%
rename from include/usb/musb.h
rename to include/linux/usb/musb.h
diff --git a/include/usb/phy.h b/include/linux/usb/phy.h
similarity index 99%
rename from include/usb/phy.h
rename to include/linux/usb/phy.h
index 98a4ce087f..651a8824f3 100644
--- a/include/usb/phy.h
+++ b/include/linux/usb/phy.h
@@ -12,7 +12,7 @@
 #define __LINUX_USB_PHY_H
 
 #include <notifier.h>
-#include <usb/usb.h>
+#include <linux/usb/usb.h>
 #include <linux/err.h>
 
 enum usb_phy_interface {
diff --git a/include/usb/storage.h b/include/linux/usb/storage.h
similarity index 100%
rename from include/usb/storage.h
rename to include/linux/usb/storage.h
diff --git a/include/usb/twl4030.h b/include/linux/usb/twl4030.h
similarity index 100%
rename from include/usb/twl4030.h
rename to include/linux/usb/twl4030.h
diff --git a/include/usb/ulpi.h b/include/linux/usb/ulpi.h
similarity index 100%
rename from include/usb/ulpi.h
rename to include/linux/usb/ulpi.h
diff --git a/include/usb/usb.h b/include/linux/usb/usb.h
similarity index 99%
rename from include/usb/usb.h
rename to include/linux/usb/usb.h
index 717bcf935a..ffeceec88f 100644
--- a/include/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -21,9 +21,9 @@
 
 #include <driver.h>
 #include <slice.h>
-#include <usb/ch9.h>
-#include <usb/ch11.h>
-#include <usb/usb_defs.h>
+#include <linux/usb/ch9.h>
+#include <uapi/linux/usb/ch11.h>
+#include <linux/usb/usb_defs.h>
 #include <asm/byteorder.h>
 
 /* Everything is aribtrary */
diff --git a/include/usb/usb_defs.h b/include/linux/usb/usb_defs.h
similarity index 100%
rename from include/usb/usb_defs.h
rename to include/linux/usb/usb_defs.h
diff --git a/include/usb/usbnet.h b/include/linux/usb/usbnet.h
similarity index 100%
rename from include/usb/usbnet.h
rename to include/linux/usb/usbnet.h
diff --git a/include/usb/usbroothubdes.h b/include/linux/usb/usbroothubdes.h
similarity index 100%
rename from include/usb/usbroothubdes.h
rename to include/linux/usb/usbroothubdes.h
diff --git a/include/usb/usbserial.h b/include/linux/usb/usbserial.h
similarity index 100%
rename from include/usb/usbserial.h
rename to include/linux/usb/usbserial.h
diff --git a/include/usb/xhci.h b/include/linux/usb/xhci.h
similarity index 100%
rename from include/usb/xhci.h
rename to include/linux/usb/xhci.h
diff --git a/include/mach/imx/devices.h b/include/mach/imx/devices.h
index 3d1f8eb237..ace2962fc3 100644
--- a/include/mach/imx/devices.h
+++ b/include/mach/imx/devices.h
@@ -8,7 +8,7 @@
 #include <platform_data/imxfb.h>
 #include <mach/imx/imx-ipu-fb.h>
 #include <platform_data/mmc-esdhc-imx.h>
-#include <usb/chipidea-imx.h>
+#include <linux/usb/chipidea-imx.h>
 
 struct device *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
 struct device *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata);
diff --git a/include/usb/ch11.h b/include/uapi/linux/usb/ch11.h
similarity index 100%
rename from include/usb/ch11.h
rename to include/uapi/linux/usb/ch11.h
-- 
2.30.2




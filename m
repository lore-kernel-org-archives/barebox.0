Delivery-date: Tue, 26 Sep 2023 20:40:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyh-00CK2o-AD
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 20:40:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCye-0001vj-TB
	for lore@pengutronix.de; Tue, 26 Sep 2023 20:40:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4siGjVHKnpqSelhKtZfEM5qCKmWvyNERSPIoYEYuLSY=; b=yLMuTNax7IAYQ1cKXq8COaTRI0
	K9MTl47/nDHxgjVH8Yhr4m9pYpV9AshRiz7xycGhldTtcgd8dGCMPfDgjoWOIGLXJeV9VaeStBiO9
	O5NgNUODK2NpjN2IehTUc64fh/0a3iKe27lDP0kjDENLAFvPiNAxWefGyulWlhuSqjVs0tGDfvWtt
	y1/JGiGTk1rRFn5eDqFuK/rUZoo1fTE6TfAkYMuyV29ZxXwcd7HOEXrC0E407GLy8LrMOLu6z63Ke
	SoVCKF6HuVZos9Sogb+fEVOCjPU6rwO1IelL9HD9Q8TsXayAoZjb6Nvp2GL3cgRStcQeKekao7mxz
	iFrQveOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxM-00GrNT-2j;
	Tue, 26 Sep 2023 18:38:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxF-00GrJo-2x
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 18:38:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxB-0000oi-2k; Tue, 26 Sep 2023 20:38:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-009AQI-Ki; Tue, 26 Sep 2023 20:38:36 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-00Az39-1t;
	Tue, 26 Sep 2023 20:38:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: wsa@kernel.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Sep 2023 20:38:35 +0200
Message-Id: <20230926183835.2617909-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
References: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_113842_281551_93CC3519 
X-CRM114-Status: GOOD (  24.55  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: at91: add first DT support for Calao usb/tny boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a lot of defconfigs for ARM9 AT91 boards, that we want to get
rid off after migrating the boards to at91_multi_defconfig.

Thanks to a temporarily donated Calao USB-A9G20 by Wolfram, we start by
switching the Calao boards to DT.

This is not yet a complete replacement:

  - We use the legacy NAND driver instead of the newly backported driver
    that Linux uses with the hardware, presumably without issues

  - OHCI hangs during probe, so it's disabled for now

  - A barebox with comparative functionality to the non-DT version
    exceeds the 256K partition size

These can be resolved separately though, so add here first DT support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/Makefile              |  1 +
 arch/arm/boards/calao/Makefile        |  4 +++
 arch/arm/boards/calao/board.c         | 13 ++++++++
 arch/arm/boards/calao/lowlevel.c      | 30 +++++++++++++++++
 arch/arm/configs/at91_multi_defconfig |  4 +--
 arch/arm/dts/Makefile                 |  3 ++
 arch/arm/dts/at91sam9260.dtsi         | 33 ++++++++++++++++++
 arch/arm/dts/at91sam9g20.dtsi         |  2 ++
 arch/arm/dts/calao_nand.dtsi          | 48 +++++++++++++++++++++++++++
 arch/arm/dts/tny_a9260.dts            |  4 +++
 arch/arm/dts/tny_a9g20.dts            |  4 +++
 arch/arm/dts/usb_a9260.dts            |  4 +++
 arch/arm/dts/usb_a9g20.dts            |  4 +++
 arch/arm/mach-at91/Kconfig            | 10 ++++++
 images/Makefile.at91                  |  9 +++++
 include/mach/at91/at91sam9260.h       |  1 +
 include/mach/at91/at91sam9g45.h       |  1 +
 17 files changed, 173 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/calao/Makefile
 create mode 100644 arch/arm/boards/calao/board.c
 create mode 100644 arch/arm/boards/calao/lowlevel.c
 create mode 100644 arch/arm/dts/at91sam9260.dtsi
 create mode 100644 arch/arm/dts/at91sam9g20.dtsi
 create mode 100644 arch/arm/dts/calao_nand.dtsi
 create mode 100644 arch/arm/dts/tny_a9260.dts
 create mode 100644 arch/arm/dts/tny_a9g20.dts
 create mode 100644 arch/arm/dts/usb_a9260.dts
 create mode 100644 arch/arm/dts/usb_a9g20.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c285ed7aee2d..bdac1e69ee60 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
 obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
+obj-$(CONFIG_MACH_CALAO)			+= calao/
 obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
 obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
diff --git a/arch/arm/boards/calao/Makefile b/arch/arm/boards/calao/Makefile
new file mode 100644
index 000000000000..da63d2625f7a
--- /dev/null
+++ b/arch/arm/boards/calao/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/calao/board.c b/arch/arm/boards/calao/board.c
new file mode 100644
index 000000000000..cc369c4cf1c1
--- /dev/null
+++ b/arch/arm/boards/calao/board.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <deep-probe.h>
+#include <of.h>
+
+static const struct of_device_id calao_of_match[] = {
+	{ .compatible = "calao,tny-a9260" },
+	{ .compatible = "calao,tny-a9g20" },
+	{ .compatible = "calao,usb-a9260" },
+	{ .compatible = "calao,usb-a9g20" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(calao_of_match);
diff --git a/arch/arm/boards/calao/lowlevel.c b/arch/arm/boards/calao/lowlevel.c
new file mode 100644
index 000000000000..2a081a97a4e3
--- /dev/null
+++ b/arch/arm/boards/calao/lowlevel.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <init.h>
+#include <debug_ll.h>
+#include <asm/reloc.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
+
+static void dbgu_init(void)
+{
+	/* pinmux/clocks/uart already configured by first stage */
+	putc_ll('>');
+}
+
+#define CALAO_ENTRY_2ND(entrypoint, dtbname) \
+AT91_ENTRY_FUNCTION(entrypoint, r0, r1, r2) { \
+	extern char __dtb_z_##dtbname##_start[]; \
+	arm_cpu_lowlevel_init(); \
+	arm_setup_stack(AT91SAM9260_SRAM_END); \
+	dbgu_init(); \
+	at91sam9260_barebox_entry(runtime_address(__dtb_z_##dtbname##_start)); \
+}
+
+CALAO_ENTRY_2ND(start_tny_a9260, tny_a9260);
+CALAO_ENTRY_2ND(start_tny_a9g20, tny_a9g20);
+CALAO_ENTRY_2ND(start_usb_a9260, usb_a9260);
+CALAO_ENTRY_2ND(start_usb_a9g20, usb_a9g20);
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index de47af3bd0a6..e24bb36c2890 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_AT91=y
 CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_CALAO=y
 CONFIG_MACH_SKOV_ARM9CPU=y
 CONFIG_MACH_AT91SAM9263EK=y
 CONFIG_MACH_AT91SAM9X5EK=y
@@ -98,6 +99,7 @@ CONFIG_I2C=y
 CONFIG_I2C_AT91=y
 CONFIG_MTD=y
 CONFIG_NAND=y
+CONFIG_MTD_NAND_ECC_SOFT=y
 CONFIG_NAND_ATMEL=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_FASTMAP=y
@@ -117,7 +119,6 @@ CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_MMC_GPP_PARTITIONS=y
 CONFIG_MCI_ATMEL_SDHCI=y
 CONFIG_MFD_ATMEL_FLEXCOM=y
-CONFIG_STATE_DRV=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
@@ -141,6 +142,5 @@ CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 97fbb8115341..e9512a30c812 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -194,6 +194,9 @@ lwl-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-spb4.dtb.o		\
 	vf610-zii-ssmb-dtu.dtb.o
 lwl-$(CONFIG_MACH_AC_SXB) += ac-sxb.dtb.o
+lwl-$(CONFIG_MACH_CALAO) += \
+	tny_a9260.dtb.o tny_a9g20.dtb.o \
+	usb_a9260.dtb.o usb_a9g20.dtb.o
 lwl-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 lwl-$(CONFIG_MACH_SAMA5D3_XPLAINED) += at91-sama5d3_xplained.dtb.o
 lwl-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
diff --git a/arch/arm/dts/at91sam9260.dtsi b/arch/arm/dts/at91sam9260.dtsi
new file mode 100644
index 000000000000..828ab6646e85
--- /dev/null
+++ b/arch/arm/dts/at91sam9260.dtsi
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+&ebi {
+	status = "disabled";
+};
+
+&nand_controller {
+	status = "disabled";
+};
+
+&{/ahb/apb} {
+	nand0: nand@40000000 {
+		compatible = "atmel,at91rm9200-nand";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0x40000000 0x10000000
+		       0xffffe800 0x200
+		      >;
+		atmel,nand-addr-offset = <21>;
+		atmel,nand-cmd-offset = <22>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_nand_cs &pinctrl_nand_rb>;
+		gpios = <&pioC 13 GPIO_ACTIVE_HIGH
+			 &pioC 14 GPIO_ACTIVE_HIGH
+			 0
+			>;
+		status = "disabled";
+	};
+};
+
+&usb0 { /* currently hangs with DT-enabled driver */
+	status = "disabled";
+};
diff --git a/arch/arm/dts/at91sam9g20.dtsi b/arch/arm/dts/at91sam9g20.dtsi
new file mode 100644
index 000000000000..b8301a8ce7de
--- /dev/null
+++ b/arch/arm/dts/at91sam9g20.dtsi
@@ -0,0 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include "at91sam9260.dtsi"
diff --git a/arch/arm/dts/calao_nand.dtsi b/arch/arm/dts/calao_nand.dtsi
new file mode 100644
index 000000000000..e42d6cdc8c01
--- /dev/null
+++ b/arch/arm/dts/calao_nand.dtsi
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+&nand0 {
+	nand-bus-width = <8>;
+	nand-ecc-mode = "soft";
+	nand-on-flash-bbt;
+	status = "okay";
+
+	at91bootstrap@0 {
+		label = "at91bootstrap";
+		reg = <0x0 0x20000>;
+	};
+
+	barebox@20000 {
+		label = "barebox";
+		reg = <0x20000 0x40000>;
+	};
+
+	bareboxenv@60000 {
+		label = "bareboxenv";
+		reg = <0x60000 0x20000>;
+	};
+
+	bareboxenv2@80000 {
+		label = "bareboxenv2";
+		reg = <0x80000 0x20000>;
+	};
+
+	oftree@80000 {
+		label = "oftree";
+		reg = <0xa0000 0x20000>;
+	};
+
+	kernel@a0000 {
+		label = "kernel";
+		reg = <0xc0000 0x400000>;
+	};
+
+	rootfs@4a0000 {
+		label = "rootfs";
+		reg = <0x4c0000 0x7800000>;
+	};
+
+	data@7ca0000 {
+		label = "data";
+		reg = <0x7cc0000 0x8340000>;
+	};
+};
diff --git a/arch/arm/dts/tny_a9260.dts b/arch/arm/dts/tny_a9260.dts
new file mode 100644
index 000000000000..2c4df66f7a75
--- /dev/null
+++ b/arch/arm/dts/tny_a9260.dts
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <arm/microchip/tny_a9260.dts>
+#include "at91sam9260.dtsi"
+#include "calao_nand.dtsi"
diff --git a/arch/arm/dts/tny_a9g20.dts b/arch/arm/dts/tny_a9g20.dts
new file mode 100644
index 000000000000..654a988c44c3
--- /dev/null
+++ b/arch/arm/dts/tny_a9g20.dts
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <arm/microchip/tny_a9g20.dts>
+#include "at91sam9g20.dtsi"
+#include "calao_nand.dtsi"
diff --git a/arch/arm/dts/usb_a9260.dts b/arch/arm/dts/usb_a9260.dts
new file mode 100644
index 000000000000..9eb2db3ff8ce
--- /dev/null
+++ b/arch/arm/dts/usb_a9260.dts
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <arm/microchip/usb_a9260.dts>
+#include "at91sam9260.dtsi"
+#include "calao_nand.dtsi"
diff --git a/arch/arm/dts/usb_a9g20.dts b/arch/arm/dts/usb_a9g20.dts
new file mode 100644
index 000000000000..a8ed22b7c407
--- /dev/null
+++ b/arch/arm/dts/usb_a9g20.dts
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <arm/microchip/usb_a9g20.dts>
+#include "at91sam9g20.dtsi"
+#include "calao_nand.dtsi"
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 1197e06670c7..94e8e525a2f0 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -571,6 +571,16 @@ config AT91_MULTI_BOARDS
 
 if AT91_MULTI_BOARDS
 
+config MACH_CALAO
+	bool "CALAO DT-enabled boards (TNY/USB-A9260/A9G20)"
+	select SOC_AT91SAM9260
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	select HAVE_AT91_SDRAMC
+	help
+	  Select this if you are using a device tree enabled board
+	  from Calao Systems: TNY-A9260, TNY-A9G20, USB-A9260 or USB-A9G20.
+
 config MACH_SKOV_ARM9CPU
 	bool "SKOV ARM9 CPU"
 	select SOC_AT91SAM9263
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 36f725940639..523dc5f499f0 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -160,3 +160,12 @@ image-$(CONFIG_MACH_USB_A9263) += barebox-usb-a9263-128m.img
 pblb-$(CONFIG_MACH_USB_A9G20) += start_usb_a9g20
 FILE_barebox-usb-a9g20.img = start_usb_a9g20.pblb
 image-$(CONFIG_MACH_USB_A9G20) += barebox-usb-a9g20.img
+
+pblb-$(CONFIG_MACH_CALAO) += start_tny_a9260 start_tny_a9g20 \
+			     start_usb_a9260 start_usb_a9g20
+FILE_barebox-tny-a9260.img = start_tny_a9260.pblb
+FILE_barebox-tny-a9g20.img = start_tny_a9g20.pblb
+FILE_barebox-usb-a9260.img = start_usb_a9260.pblb
+FILE_barebox-usb-a9g20.img = start_usb_a9g20.pblb
+image-$(CONFIG_MACH_CALAO) += barebox-tny-a9260.img barebox-tny-a9g20.img \
+			      barebox-usb-a9260.img barebox-usb-a9g20.img
diff --git a/include/mach/at91/at91sam9260.h b/include/mach/at91/at91sam9260.h
index 1375872ce230..764af3a20316 100644
--- a/include/mach/at91/at91sam9260.h
+++ b/include/mach/at91/at91sam9260.h
@@ -100,6 +100,7 @@
 #define AT91SAM9260_SRAM1_SIZE	SZ_4K		/* Internal SRAM 1 size (4Kb) */
 #define AT91SAM9260_SRAM_BASE	0x002FF000	/* Internal SRAM base address */
 #define AT91SAM9260_SRAM_SIZE	SZ_8K		/* Internal SRAM size (8Kb) */
+#define AT91SAM9260_SRAM_END	(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE)
 
 #define AT91SAM9260_UHP_BASE	0x00500000	/* USB Host controller */
 
diff --git a/include/mach/at91/at91sam9g45.h b/include/mach/at91/at91sam9g45.h
index d7596930d2e9..630cee2b87af 100644
--- a/include/mach/at91/at91sam9g45.h
+++ b/include/mach/at91/at91sam9g45.h
@@ -107,6 +107,7 @@
  */
 #define AT91SAM9G45_SRAM_BASE	0x00300000	/* Internal SRAM base address */
 #define AT91SAM9G45_SRAM_SIZE	SZ_64K		/* Internal SRAM size (64Kb) */
+#define AT91SAM9G45_SRAM_END	(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE)
 
 #define AT91SAM9G45_ROM_BASE	0x00400000	/* Internal ROM base address */
 #define AT91SAM9G45_ROM_SIZE	SZ_64K		/* Internal ROM size (64Kb) */
-- 
2.39.2




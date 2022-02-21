Delivery-date: Mon, 21 Feb 2022 11:55:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LQ-005vVo-TQ
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 11:55:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LP-0007Px-1F
	for lore@pengutronix.de; Mon, 21 Feb 2022 11:55:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJ3+B8+bDMa+cSXKWRIpmVG9dayFOj1/7UT7Vfvvlgw=; b=llAJvBklLFjSa6
	kIje2ZcQvLUphnQHdQ7VZIT8TLADp+cGSJI7kFqVkLgPLnOTJK0Dz565sFVN0zmbMKtk1XLAZgaBG
	pi8LmcUbV6vGdKKFCIDQJB/9b6jFbiNNdtMyPE+LcFkXDEjh1MXmj2a2iMZQSBsCleTzk8uSUOmho
	n1WbjVKNcU08MBurOXi/QzQWnc+fHy3Aa7EGJ1WK34VZ+nrj6ThJRqoV0mNHDRbMWFB8+g6xA2oWn
	EDQ9o52hRS45tlVWBd7dsw6Aw5bNKywXeVQPurCfdbLzaCNlcBPOeh6LRgVrUgpAA/pTUCA5Egn8a
	EPtez/u6oM2K4OZkm4Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM6Jz-0058WA-7z; Mon, 21 Feb 2022 10:53:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM63R-0050DH-Iy
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 10:36:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nM63Q-0004uh-9c; Mon, 21 Feb 2022 11:36:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nM63P-00FdrH-Qv; Mon, 21 Feb 2022 11:36:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Feb 2022 11:36:25 +0100
Message-Id: <20220221103625.3728055-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220221103625.3728055-1-a.fatoum@pengutronix.de>
References: <20220221103625.3728055-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_023629_711332_08CDA94E 
X-CRM114-Status: GOOD (  16.80  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: stm32mp: add board support for STM32MP135F-DK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have the needed drivers in place to support the upcoming
STM32MP131. Linux already has a basic DT for the DK board. Add a barebox
board that leverages it. To try it out modify the existing FIP with:

  fiptool update --nt-fw build/images/barebox-stm32mp-generic-bl33.img \
                 --hw-config build/arch/arm/dts/stm32mp135f-dk.dtb \
		 mmcblk0p3

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst          |  1 +
 arch/arm/boards/Makefile                  |  1 +
 arch/arm/boards/stm32mp13xx-dk/Makefile   |  2 ++
 arch/arm/boards/stm32mp13xx-dk/lowlevel.c | 19 +++++++++++++++++++
 arch/arm/dts/Makefile                     |  1 +
 arch/arm/dts/stm32mp131.dtsi              | 14 ++++++++++++++
 arch/arm/dts/stm32mp135f-dk.dts           | 12 ++++++++++++
 arch/arm/mach-stm32mp/Kconfig             |  8 ++++++++
 images/Makefile.stm32mp                   |  1 +
 9 files changed, 59 insertions(+)
 create mode 100644 arch/arm/boards/stm32mp13xx-dk/Makefile
 create mode 100644 arch/arm/boards/stm32mp13xx-dk/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp131.dtsi
 create mode 100644 arch/arm/dts/stm32mp135f-dk.dts

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 55bdafe78579..6f4b14049ad4 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -33,6 +33,7 @@ There's a single ``stm32mp_defconfig`` for all STM32MP boards::
 The resulting images will be placed under ``images/``::
 
   barebox-stm32mp-generic-bl33.img
+  barebox-stm32mp13xx-dk.stm32
   barebox-stm32mp15xx-dkx.stm32
   barebox-stm32mp15x-ev1.stm32
   barebox-stm32mp157c-lxa-mc1.stm32
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index a15963c775ce..8557e1dca8c6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -139,6 +139,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
 obj-$(CONFIG_MACH_STM32MP15XX_DKX)		+= stm32mp15xx-dkx/
+obj-$(CONFIG_MACH_STM32MP13XX_DK)		+= stm32mp13xx-dk/
 obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
 obj-$(CONFIG_MACH_STM32MP15X_EV1)		+= stm32mp15x-ev1/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
diff --git a/arch/arm/boards/stm32mp13xx-dk/Makefile b/arch/arm/boards/stm32mp13xx-dk/Makefile
new file mode 100644
index 000000000000..9961af02a3ea
--- /dev/null
+++ b/arch/arm/boards/stm32mp13xx-dk/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/stm32mp13xx-dk/lowlevel.c b/arch/arm/boards/stm32mp13xx-dk/lowlevel.c
new file mode 100644
index 000000000000..ac4fa40e1960
--- /dev/null
+++ b/arch/arm/boards/stm32mp13xx-dk/lowlevel.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <mach/entry.h>
+#include <debug_ll.h>
+
+extern char __dtb_z_stm32mp135f_dk_start[];
+
+ENTRY_FUNCTION(start_stm32mp13xx_dk, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	putc_ll('>');
+
+	fdt = __dtb_z_stm32mp135f_dk_start  + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d419e8394d53..e0bb66580f38 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -127,6 +127,7 @@ lwl-$(CONFIG_MACH_SKOV_IMX6) += imx6s-skov-imx6.dtb.o imx6dl-skov-imx6.dtb.o imx
 lwl-$(CONFIG_MACH_SKOV_ARM9CPU) += at91-skov-arm9cpu.dtb.o
 lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o
+lwl-$(CONFIG_MACH_STM32MP13XX_DK) += stm32mp135f-dk.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
diff --git a/arch/arm/dts/stm32mp131.dtsi b/arch/arm/dts/stm32mp131.dtsi
new file mode 100644
index 000000000000..2ecad85f086e
--- /dev/null
+++ b/arch/arm/dts/stm32mp131.dtsi
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/ {
+	aliases {
+		mmc0 = &sdmmc1;
+	};
+};
+
+&{/soc} {
+	memory-controller@5a003000 {
+		compatible = "st,stm32mp13-ddr";
+		reg = <0x5a003000 0x1000>;
+	};
+};
diff --git a/arch/arm/dts/stm32mp135f-dk.dts b/arch/arm/dts/stm32mp135f-dk.dts
new file mode 100644
index 000000000000..104886e8af88
--- /dev/null
+++ b/arch/arm/dts/stm32mp135f-dk.dts
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+
+#include <arm/stm32mp135f-dk.dts>
+#include "stm32mp131.dtsi"
+
+/ {
+	model = "STM32MP153F-DK";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 38c1a44770c9..57c1691591e7 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -6,10 +6,18 @@ config ARCH_NR_GPIO
 	int
 	default 416
 
+config ARCH_STM32MP13
+	select ARM_PSCI_CLIENT
+	bool
+
 config ARCH_STM32MP157
 	select ARM_PSCI_CLIENT
 	bool
 
+config MACH_STM32MP13XX_DK
+	select ARCH_STM32MP13
+	bool "STM32MP137F DK board"
+
 config MACH_STM32MP15XX_DKX
 	select ARCH_STM32MP157
 	bool "STM32MP157 DK1 and DK2 boards"
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index fa79e09f952f..abe70a6a5037 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -30,6 +30,7 @@ pblb-$(CONFIG_ARCH_STM32MP) += start_stm32mp_bl33
 FILE_barebox-stm32mp-generic-bl33.img  = start_stm32mp_bl33.pblb
 image-$(CONFIG_ARCH_STM32MP) += barebox-stm32mp-generic-bl33.img
 
+$(call build_stm32mp_image, CONFIG_MACH_STM32MP13XX_DK, start_stm32mp13xx_dk, stm32mp13xx-dk)
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15XX_DKX, start_stm32mp15xx_dkx, stm32mp15xx-dkx)
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15X_EV1, start_stm32mp15x_ev1, stm32mp15x-ev1)
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


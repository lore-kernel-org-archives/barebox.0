Delivery-date: Thu, 25 Sep 2025 14:00:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke6-000vsi-0r
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke3-0005Eb-IQ
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jI4YQkoub0i+ORwTGsa0jcs2C0dEAE+4DMHxkoznQu0=; b=1EGBQvBMugYlN8zoETv1KMseSa
	gmxxbIAAiBEAAjxL+Q69oJo9GU8LOILll+wOruB+WNQ1upVD9hiOGOMb9Af87AHrFvjbHAE2jcfj2
	ez62EOdOcQOSPAYEz8dmwjhWzUVp5aPxXfHJlzeu93V5brWNCfzCYQyfVQTh9kZdBih2NOPFeMb7Z
	9VQA4O8DxTHlMTCl2DamTRaJG9uUAF7N+phIa38/5wRoE1gzTnTUI9fH/kpfAXH1LKKprN5PplQgf
	KQdumdK+483DiENhTU7q1IM7uzS44sisAioWhxT3OEElgZjIhX/g1Uqm7LilX0z3NeqYRnq7lRqLb
	h0fuRRxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdM-00000008jzH-0JxB;
	Thu, 25 Sep 2025 11:59:36 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdG-00000008jqf-1H0H
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:34 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEkr016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-2-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=8958;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=GlaJrASjolC19WZxGpe3t3XCDWIHUeYzVwvFYAuqsMk=;
 b=SRMcdUsyR36u90ad3odTlGseroYA3zA/84IJmOezd+OaewYnLj2rfWcTcewgW7C0L/RH1XoOu
 A9YK8QHJRtpAowk5Ke3tpx3UtfE7OevemwPJ1ghdHQtt/Frp0/NFHIt
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045930_635564_ED908899 
X-CRM114-Status: GOOD (  17.02  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/10] Add Enclustra Mercury+ SA2 module
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement the files necessary to support the Enclustra Mercury+ SA2
module (SoM).

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/enclustra-sa2/Makefile        |  2 ++
 arch/arm/boards/enclustra-sa2/board.c         | 34 +++++++++++++++++++++++++++
 arch/arm/boards/enclustra-sa2/lowlevel.c      | 15 ++++++++++++
 arch/arm/configs/socfpga-xload_defconfig      |  1 +
 arch/arm/configs/socfpga_defconfig            |  3 +--
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts | 31 ++++++++++++++++++++++++
 arch/arm/mach-socfpga/Kconfig                 |  4 ++++
 images/Makefile.socfpga                       |  8 +++++++
 10 files changed, 98 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c851e1546bd6e0840a4361a53f60852df07c0a95..61cc7b056607e7e87b277e37c4bc3376ad252593 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -120,6 +120,7 @@ obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
 obj-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE)	+= arrow-axe5-eagle/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1)	+= enclustra-aa1/
+obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2)	+= enclustra-sa2/
 obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)	+= terasic-de10-nano/
diff --git a/arch/arm/boards/enclustra-sa2/Makefile b/arch/arm/boards/enclustra-sa2/Makefile
new file mode 100644
index 0000000000000000000000000000000000000000..8c927fe291a6b3eb20a32a2db96c73f231ab4697
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/Makefile
@@ -0,0 +1,2 @@
+obj-y += lowlevel.o board.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/enclustra-sa2/board.c b/arch/arm/boards/enclustra-sa2/board.c
new file mode 100644
index 0000000000000000000000000000000000000000..d3117e9a1058738ea541f45b28c6a95184331554
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/board.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <linux/mdio.h>
+#include <linux/micrel_phy.h>
+#include <linux/phy.h>
+#include <linux/sizes.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <mach/socfpga/cyclone5-regs.h>
+
+/*
+ * Ethernet PHY: Microchip/Micrel KSZ9031RNX
+ */
+static int phy_fixup(struct phy_device *dev)
+{
+	return 0;
+}
+
+static int socfpga_init(void)
+{
+	if (!of_machine_is_compatible("enclustra,mercury-sa2"))
+		return 0;
+
+	if (IS_ENABLED(CONFIG_PHYLIB))
+		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK, phy_fixup);
+
+	return 0;
+}
+console_initcall(socfpga_init);
diff --git a/arch/arm/boards/enclustra-sa2/lowlevel.c b/arch/arm/boards/enclustra-sa2/lowlevel.c
new file mode 100644
index 0000000000000000000000000000000000000000..08744756949f96c041e255963362f04c4d3d186a
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/lowlevel.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include "sdram_config.h"
+#include "pinmux_config.c"
+#include "pll_config.h"
+#include "sequencer_defines.h"
+#include "sequencer_auto.h"
+#include "sequencer_auto_inst_init.c"
+#include "sequencer_auto_ac_init.c"
+#include "iocsr_config_cyclone5.c"
+
+#include <mach/socfpga/lowlevel.h>
+
+SOCFPGA_C5_ENTRY(start_socfpga_sa2, socfpga_cyclone5_mercury_sa2, SZ_1G);
+SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_sa2_xload, SZ_1G);
diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 892f1d24cb268387668ed064db48c674dbbf4ef8..00841b8530ded7f09a16c6c3b957ecd902211ec2 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_SOCFPGA=y
 CONFIG_ARCH_SOCFPGA_XLOAD=y
 CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
+CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index a24934cd8bda229fea6a41d94d5c049bff585699..e9b93bc19775667d70ce02a01ab4dcae26053b86 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -1,8 +1,7 @@
 CONFIG_ARCH_SOCFPGA=y
 CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
-CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1=y
-CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES=y
+CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 021573a266ca30d46ce0a2dc9083a61461949540..5d04636cd3946084d66596a90c276b119f9dcb2c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -142,6 +142,7 @@ lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += socfpga_arria10_mercury_aa1.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2) += socfpga_cyclone5_mercury_sa2.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += socfpga_cyclone5_de10_nano.dtb.o
diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts
new file mode 100644
index 0000000000000000000000000000000000000000..9e2f2c1af19e68c0c662f62bc154856f75df2510
--- /dev/null
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts
@@ -0,0 +1,31 @@
+/*
+ *  Copyright (C) 2025 David Picard <david.picard@clermont.in2p3.fr>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <arm/intel/socfpga/socfpga_cyclone5_mercury_sa2.dts>
+#include "socfpga.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart0;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
+	};
+};
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index f0dce3bad0429d38840975a2f3c3640731e7a605..61935c260c8f06acec119377af7d46411e3e2744 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -38,6 +38,10 @@ config MACH_SOCFPGA_EBV_SOCRATES
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "EBV Socrates"
 
+config MACH_SOCFPGA_ENCLUSTRA_SA2
+	select ARCH_SOCFPGA_CYCLONE5
+	bool "Enclustra SA2"
+
 config MACH_SOCFPGA_TERASIC_DE0_NANO_SOC
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Terasic DE0-NANO-SoC aka Atlas"
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index db1a47b6a1ad7f6a7d08036bdeed6a50b707ac47..ec1bce5079c9e1b334f6ae8225f9d91282615b6d 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -59,6 +59,14 @@ pblb-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += start_socfpga_aa1_bringup
 FILE_barebox-socfpga-aa1-bringup.img = start_socfpga_aa1_bringup.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += barebox-socfpga-aa1-bringup.img
 
+pblb-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2) += start_socfpga_sa2_xload
+FILE_barebox-socfpga-sa2-xload.img = start_socfpga_sa2_xload.pblb.socfpgaimg
+socfpga-xload-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2) += barebox-socfpga-sa2-xload.img
+
+pblb-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2) += start_socfpga_sa2
+FILE_barebox-socfpga-sa2.img = start_socfpga_sa2.pblb
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_SA2) += barebox-socfpga-sa2.img
+
 pblb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles_xload
 FILE_barebox-socfpga-achilles-xload.img = start_socfpga_achilles_xload.pblb.socfpgaimg
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles-xload.img

-- 
2.43.0




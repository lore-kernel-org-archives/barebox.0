Delivery-date: Wed, 17 Sep 2025 17:51:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRc-0047pV-2P
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:51:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRa-0000oA-Ce
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rkoyQtZQm6vFJ/f4gsKVhbXsYEk5PZ5yvYlXQIqRNOI=; b=Rad7DaG7xwF8ANVAIkQ88FtRmQ
	PtJhaWxQVp3BZWMnl1Jf+5zqCC/FmLTt85jkbKtLftgIsFV3aB3MYQj/NcJ5YzShbt+uVE1y35mcw
	LjTXBTs9BJu+8ys/Nyesmy9zV2cBiSnfDNmtypSnTgGP+mBtvk5SeJWZQE3hdzrEHxFlFBq6XvW+e
	mfTaQFJRu9oXlH6XMg5ObvC4X1HJhRR4E4eWHwAGseidKQTWA3Y3yV1CcD2Kz2WG6DIlR1Y0Obkra
	XDEIeVxaiK2qa87PlZytnbgN0zekvzemWtLotKA/gWidr6BPQErqCws/h5k0TTQkzX9d4/GQmw0ur
	iapctGtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR9-0000000CtHQ-0diF;
	Wed, 17 Sep 2025 15:51:15 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR6-0000000CtAB-3ReC
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:14 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoC7032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:02 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-2-2de8f69107a1@clermont.in2p3.fr>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=8748;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=0cI5J9FCfRMDH4Aw3rcC5peDN4hTVnmPRAvjxRsk4aA=;
 b=5iNYQ4FDLrznsXJWs58NVMzCAdCWUC5QFlom59eIPpOMLfZ/MVuqTXa2eAtU8vGKbMcIcqjzD
 13bo5vpkL3xDpTlaFtPz+6xbZUmXbSc+gUYpEAWenfLide4q6LR6pZD
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085113_149655_5B19B650 
X-CRM114-Status: GOOD (  15.96  )
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
Subject: [PATCH 02/11] Add Enclustra Mercury+ SA2 module
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/enclustra-sa2/Makefile        |  2 ++
 arch/arm/boards/enclustra-sa2/board.c         | 32 +++++++++++++++++++++++++++
 arch/arm/boards/enclustra-sa2/lowlevel.c      | 13 +++++++++++
 arch/arm/configs/socfpga-xload_defconfig      |  1 +
 arch/arm/configs/socfpga_defconfig            |  3 +--
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts | 31 ++++++++++++++++++++++++++
 arch/arm/mach-socfpga/Kconfig                 |  4 ++++
 images/Makefile.socfpga                       |  8 +++++++
 10 files changed, 94 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ac1fa74d4c03de7a462746cb93a061017cd2b64d..3c3801aaae8425689f2f070321d4ec2fd38ad90a 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -118,6 +118,7 @@ obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
 obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
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
index 0000000000000000000000000000000000000000..834d0ab91871d0329af20f89a13af65e194b21c3
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/board.c
@@ -0,0 +1,32 @@
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
+	if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
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
index 0000000000000000000000000000000000000000..a5065a4d89a82e7c048879488c9f441d32556f00
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/lowlevel.c
@@ -0,0 +1,13 @@
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
index 37e9ecec71876d6e6596faf0d4faf1ab9fa1c466..039196d4954ee32401c269a58d92e6c5cba602ed 100644
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
index 0050dd2e4f4e4ae485e3cb0ca1f37ead0b947189..20d323017891531ad7a9f47b5dcf1334fd3534d8 100644
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
index 6612a514523103fdaaae026527f3441ebc57d228..5f624ea6f95fb15970bd6fe4b36515ff360544a3 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -141,6 +141,7 @@ lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
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
index 4ec376056db8c07ad1d73041b079cde2cfeb9a17..a4f859ebf3d7956697d180e15f50b3495cd4c472 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -34,6 +34,10 @@ config MACH_SOCFPGA_ENCLUSTRA_AA1
 	select ARCH_SOCFPGA_ARRIA10
 	bool "Enclustra AA1"
 
+config MACH_SOCFPGA_ENCLUSTRA_SA2
+	select ARCH_SOCFPGA_CYCLONE5
+	bool "Enclustra SA2"
+
 config MACH_SOCFPGA_REFLEX_ACHILLES
 	select ARCH_SOCFPGA_ARRIA10
 	bool "Reflex Achilles"
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 7f95bed03297e616532ffb38cb36742b155146f5..e4c96801bee69910f7ce5e77ccdd3ac2766e1926 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -51,6 +51,14 @@ pblb-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += start_socfpga_aa1_bringup
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




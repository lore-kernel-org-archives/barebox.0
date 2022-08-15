Delivery-date: Mon, 15 Aug 2022 08:45:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTqc-0069XP-Q7
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 08:45:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTqd-0000La-4o
	for lore@pengutronix.de; Mon, 15 Aug 2022 08:45:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fvaID5mZHY4W7EJ99dgkrftahRoMTT9hScd5NfnxWZg=; b=pqYrZ8jFNgnVTldtELc7HvPWml
	ZNj4jByTFg0bfZqOIxos87TRu3JPDugTeypi3EuMidfVYNIZXKCnQGKre+wem3z1DqQvDOeokztp+
	Cbx1lYNwUpqu9jdvCyAd5Gbd9AZlMfmBoCBSlwZHT2y4Y3mzfwSVkHm+5OFfUs5tNCFGB4dIt4IWf
	7/FEjcM9BpwbRUTRBG/Bf9ZpKGr2430Wv4KPaHz/tGVfNacq15kBDV+zZv7kUSePgJfQBitAyuMiP
	8edgwqSHyLfcfUfOfk18brmbsW1FSvHXdFQUS0ZMXQqapL4izp10e1tv1FhZPF/feNA/zwep7+sts
	/iarzBOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTpG-00C7Af-Rb; Mon, 15 Aug 2022 06:43:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTov-00C71K-CC
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 06:43:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTou-00006X-3E; Mon, 15 Aug 2022 08:43:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTor-003rrZ-3x; Mon, 15 Aug 2022 08:43:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTos-003Kyt-P9; Mon, 15 Aug 2022 08:43:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 08:43:25 +0200
Message-Id: <20220815064325.793928-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_234329_859147_6F89F1B1 
X-CRM114-Status: GOOD (  14.27  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8M: add TrustZone Address Space Controller 380 init function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox running as BL2 with OP-TEE as BL32 is expected to enable TZASC,
so access to secure memory may be restricted. Add helper functions that
can be called from lowlevel code while barebox is in EL3.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Makefile                  |  1 +
 arch/arm/mach-imx/include/mach/imx8m-regs.h |  1 +
 arch/arm/mach-imx/include/mach/tzasc.h      | 16 +++++++
 arch/arm/mach-imx/tzasc.c                   | 47 +++++++++++++++++++++
 4 files changed, 65 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/tzasc.h
 create mode 100644 arch/arm/mach-imx/tzasc.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index fa5133a22958..390cdaf50218 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
 lwl-$(CONFIG_ARCH_IMX8M) += atf.o romapi.o
+obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
diff --git a/arch/arm/mach-imx/include/mach/imx8m-regs.h b/arch/arm/mach-imx/include/mach/imx8m-regs.h
index e1c83ee01ddc..a5017faf830e 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-regs.h
@@ -30,6 +30,7 @@
 #define MX8M_UART4_BASE_ADDR		0x30A60000
 #define MX8M_USDHC1_BASE_ADDR		0x30B40000
 #define MX8M_USDHC2_BASE_ADDR		0x30B50000
+#define MX8M_TZASC_BASE_ADDR		0x32f80000
 #define MX8M_DDRC_PHY_BASE_ADDR		0x3c000000
 #define MX8M_DDRC_DDR_SS_GPR0		(MX8M_DDRC_PHY_BASE_ADDR + 0x01000000)
 #define MX8M_DDRC_IPS_BASE_ADDR(X)	(0x3d400000 + ((X) * 0x2000000))
diff --git a/arch/arm/mach-imx/include/mach/tzasc.h b/arch/arm/mach-imx/include/mach/tzasc.h
new file mode 100644
index 000000000000..724ba50ead5f
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/tzasc.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __IMX_TZASC_H__
+#define __IMX_TZASC_H__
+
+#include <linux/types.h>
+#include <asm/system.h>
+
+void imx8mq_tzc380_init(void);
+void imx8mm_tzc380_init(void);
+void imx8mn_tzc380_init(void);
+void imx8mp_tzc380_init(void);
+
+bool tzc380_is_enabled(void);
+
+#endif
diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
new file mode 100644
index 000000000000..9af0b7ef65e9
--- /dev/null
+++ b/arch/arm/mach-imx/tzasc.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <mach/tzasc.h>
+#include <linux/bitops.h>
+#include <mach/imx8m-regs.h>
+#include <io.h>
+
+#define GPR_TZASC_EN		BIT(0)
+#define GPR_TZASC_SWAP_ID	BIT(1)
+#define GPR_TZASC_EN_LOCK	BIT(16)
+
+static void enable_tzc380(bool bypass_id_swap)
+{
+	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
+
+	/* Enable TZASC and lock setting */
+	setbits_le32(&gpr[10], GPR_TZASC_EN);
+	setbits_le32(&gpr[10], GPR_TZASC_EN_LOCK);
+	if (bypass_id_swap)
+		setbits_le32(&gpr[10], BIT(1));
+	/*
+	 * set Region 0 attribute to allow secure and non-secure
+	 * read/write permission. Found some masters like usb dwc3
+	 * controllers can't work with secure memory.
+	 */
+	writel(0xf0000000, MX8M_TZASC_BASE_ADDR + 0x108);
+}
+
+void imx8mq_tzc380_init(void)
+{
+	enable_tzc380(false);
+}
+
+void imx8mn_tzc380_init(void) __alias(imx8mm_tzc380_init);
+void imx8mp_tzc380_init(void) __alias(imx8mm_tzc380_init);
+void imx8mm_tzc380_init(void)
+{
+	enable_tzc380(true);
+}
+
+bool tzc380_is_enabled(void)
+{
+	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
+
+	return (readl(&gpr[10]) & (GPR_TZASC_EN | GPR_TZASC_EN_LOCK))
+		== (GPR_TZASC_EN | GPR_TZASC_EN_LOCK);
+}
-- 
2.30.2




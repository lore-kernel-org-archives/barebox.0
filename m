Delivery-date: Tue, 30 Apr 2024 13:30:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1lgy-00AGlt-0L
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 13:30:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1lgu-0003Ql-4M
	for lore@pengutronix.de; Tue, 30 Apr 2024 13:30:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q2fSF3XoPwpVltTx/3w9HU3w65V79CNY3BOjJT8RkPs=; b=ugUFRGR6zQxuiI7h1ljv0mUhGU
	d2SFvIcHxE3ysn/62eIx0lQSSw3UGBU1VBz7ZqkKJj/XWOnaKMmO0lykvYoJ07BbOZGSVlQo5s/2C
	DVJyyJz0bOzqJZhSiVD3xgC1WwNicLiTiDQx8k+YCqmrw0i8QHtCk2aZ/R8nNnrBy6DhxGz+/P375
	u6ygChpMK8wEGvsYAio+PePZtGdy1ScrXB4WV0+HUrzzgVtt5r80PCOfDBwLCrwYNl8RsjiliwEMd
	pnLNXl8tQTLWBZroe5vAjk6uMH10eD87N3emtr5Z95DDp5ikp0h9/XD6wyQOajyZM4WqDaseKXIqN
	D46pdjSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lgH-00000006B1w-0f9C;
	Tue, 30 Apr 2024 11:29:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lgC-00000006Azk-31OG
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 11:29:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1s1lg9-0003FJ-RV
	for barebox@lists.infradead.org; Tue, 30 Apr 2024 13:29:45 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Apr 2024 13:29:41 +0200
Message-Id: <20240430112941.3207284-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240430112941.3207284-1-m.felsch@pengutronix.de>
References: <20240430112941.3207284-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_042948_828478_7FF24FA1 
X-CRM114-Status: GOOD (  19.55  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8M: add support to handle ROM SError ERR050350
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit:

| commit 2f3c92060dcd6bc9cfd3e2e344a3e1745ca39f09
| Author: Peng Fan <peng.fan@nxp.com>
| Date:   Thu Jul 9 13:39:26 2020 +0800
|
|     imx8m: workaround ROM serror
|
|     ROM SError happens on two cases:
|
|     1. ERR050342, on iMX8MQ HDCP enabled parts ROM writes to GPV1 register, but
|     when ROM patch lock is fused, this write will cause SError.
|
|     2. ERR050350, on iMX8MQ/MM/MN, when the field return fuse is burned, HAB
|     is field return mode, but the last 4K of ROM is still protected and cause
|     SError.
|
|     Since ROM mask SError until ATF unmask it, so then ATF always meets the
|     exception. This patch works around the issue in SPL by enabling SPL
|     Exception vectors table and the SError exception, take the exception
|     to eret immediately to clear the SError.
|
|     Signed-off-by: Ye Li <ye.li@nxp.com>
|     Signed-off-by: Peng Fan <peng.fan@nxp.com>

Other than U-Boot we don't support exceptions in PBL and therefore we
can handle it simpler by installing an dummy exception table which does
nothing. The table gets overriden by TF-A later on anyway.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi all,

I'm not sure if the relocation should be done within the erratum
handler or if we should move it into the lowlevel code per default for
all i.MX8M platforms since the board files call it anyway after the
lowlevel init. In the later case this would be an separate patch to drop
the pattern:

 lowlevel_setup();
 relocate_to_current_adr();

from the board files.

Regards,
  Marco

 arch/arm/mach-imx/Makefile                    |  1 +
 arch/arm/mach-imx/cpu_init.c                  | 12 +++++-
 arch/arm/mach-imx/errata.c                    | 22 ++++++++++
 arch/arm/mach-imx/imx8m_early_exceptions_64.S | 42 +++++++++++++++++++
 include/mach/imx/errata.h                     | 12 ++++++
 5 files changed, 88 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/errata.c
 create mode 100644 arch/arm/mach-imx/imx8m_early_exceptions_64.S
 create mode 100644 include/mach/imx/errata.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index ce8af486aed4..d182f95673f5 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -34,6 +34,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += imx-udc.o
 obj-$(CONFIG_RESET_IMX_SRC) += src.o
 lwl-y += cpu_init.o
+lwl-y += errata.o imx8m_early_exceptions_64.o
 pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
 pbl-y += xload-qspi.o
 obj-pbl-$(CONFIG_ARCH_IMX9) += ele.o
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index c5a47d9b9154..aebbd3defaec 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -6,6 +6,7 @@
 #include <asm/errata.h>
 #include <linux/types.h>
 #include <linux/bitops.h>
+#include <mach/imx/errata.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/imx7-regs.h>
 #include <mach/imx/imx8mq-regs.h>
@@ -75,17 +76,26 @@ void imx8mm_cpu_lowlevel_init(void)
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_SCTR);
 
 	imx8m_cpu_lowlevel_init();
+
+	erratum_050350_imx8m();
 }
 
 void imx8mn_cpu_lowlevel_init(void)
 	__alias(imx8mm_cpu_lowlevel_init);
 
 void imx8mp_cpu_lowlevel_init(void)
-	__alias(imx8mm_cpu_lowlevel_init);
+{
+	/* ungate system counter */
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_SCTR);
+
+	imx8m_cpu_lowlevel_init();
+}
 
 void imx8mq_cpu_lowlevel_init(void)
 {
 	imx8m_cpu_lowlevel_init();
+
+	erratum_050350_imx8m();
 }
 
 #define CCM_AUTHEN_TZ_NS	BIT(9)
diff --git a/arch/arm/mach-imx/errata.c b/arch/arm/mach-imx/errata.c
new file mode 100644
index 000000000000..ef8de91a9278
--- /dev/null
+++ b/arch/arm/mach-imx/errata.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <mach/imx/errata.h>
+
+#ifdef CONFIG_CPU_V8
+
+extern unsigned long early_imx8m_vectors;
+
+void erratum_050350_imx8m(void)
+{
+	if (current_el() != 3)
+		return;
+
+	relocate_to_current_adr();
+
+	asm volatile("msr vbar_el3, %0" : : "r" (&early_imx8m_vectors) : "cc");
+	asm volatile("msr daifclr, #4;isb");
+}
+
+#endif /* CONFIG_CPU_V8 */
diff --git a/arch/arm/mach-imx/imx8m_early_exceptions_64.S b/arch/arm/mach-imx/imx8m_early_exceptions_64.S
new file mode 100644
index 000000000000..cd91e1a07b9c
--- /dev/null
+++ b/arch/arm/mach-imx/imx8m_early_exceptions_64.S
@@ -0,0 +1,42 @@
+/*
+ * (C) Copyright 2013
+ * David Feng <fenghua@phytium.com.cn>
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <linux/linkage.h>
+
+#ifdef CONFIG_CPU_V8
+
+/*
+ * Early exception vectors.
+ */
+	.align	11
+	.globl	early_imx8m_vectors
+early_imx8m_vectors:
+	.align	7
+		eret
+
+	.align	7
+		eret
+
+	.align	7
+		eret
+
+	.align	7
+		eret
+
+	.align	7
+		eret
+
+	.align	7
+		eret
+
+	.align	7
+		eret
+
+	.align	7
+		eret
+
+#endif /* CONFIG_CPU_V8 */
diff --git a/include/mach/imx/errata.h b/include/mach/imx/errata.h
new file mode 100644
index 000000000000..f63342d446fc
--- /dev/null
+++ b/include/mach/imx/errata.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_IMX_ERRATA_H
+#define __MACH_IMX_ERRATA_H
+
+#ifdef CONFIG_CPU_V8
+
+void erratum_050350_imx8m(void);
+
+#endif /* CONFIG_CPU_V8 */
+
+#endif /* __MACH_IMX_ERRATA_H */
-- 
2.39.2




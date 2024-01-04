Delivery-date: Thu, 04 Jan 2024 15:19:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ1-003cUn-1M
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYz-0005Jh-Vj
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EsADeA8CjrZEeYl74gF2KdMIq/KOCoYKe2W5kAFzf5w=; b=xJ3YkKQZu3Tcb9a9tvRIY4Pfo1
	tYx6OsNqWQNxG6cPWrk7/FdDaUUz9mlls/fBzefn09fM1JYdwjVo19Tgq2UTB5VrUaofVU0w4HLDx
	ci6vZdzBjvBojR2cMhwSHKok+dtxvmaFAkJE+JELnJkgtC++CIUlerHXu2V7JApBIzFcjcW8gDjnl
	aLFaaVS6VRRp9Y+GRVG3PvfKdTOMjGC8CPu4MYXugPnP1jpx6HeVwE6PNqBD3WyQ7OA35NwPsYKRi
	o+gzpHt5erKm+TbSXUlY+lgtxNGtcdaiewejoZvR/zpDRhxrheKlyA3Hty5y2lmmmzq83ztX9yp4m
	+h32AWkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXr-00EJ89-1n;
	Thu, 04 Jan 2024 14:18:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIz2-2O
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HR-8n; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000My4-KG; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017xj-1q;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:30 +0100
Message-Id: <20240104141746.165014-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_842906_0DB11942 
X-CRM114-Status: GOOD (  17.68  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/19] ARM: layerscape: decide SCFG endianess during runtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SCFG endianess differs between SoCs. Currently supported SoCs have a big
endian SCFG unit, but upcoming LS1028a support has a little endian SCFG.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile           |  2 +-
 arch/arm/mach-layerscape/errata.c           |  4 +-
 arch/arm/mach-layerscape/lowlevel-ls102xa.c |  2 +
 arch/arm/mach-layerscape/lowlevel-ls1046a.c |  2 +
 arch/arm/mach-layerscape/soc.c              | 56 +++++++++++++++++++++
 include/soc/fsl/scfg.h                      | 19 +++++++
 6 files changed, 81 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-layerscape/soc.c
 create mode 100644 include/soc/fsl/scfg.h

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index ed55867390..ebb030a1cb 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -4,7 +4,7 @@ obj- := __dummy__.o
 lwl-y += errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel.o lowlevel-ls1046a.o
 obj-$(CONFIG_ARCH_LS1046) += icid.o
-obj-pbl-y += boot.o
+obj-pbl-y += boot.o soc.o
 pbl-y += xload-qspi.o xload.o
 obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
 obj-$(CONFIG_BOOTM) += pblimage.o
diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
index 6cb95453e7..e3793b3bcd 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -6,9 +6,7 @@
 #include <asm/system.h>
 #include <mach/layerscape/errata.h>
 #include <mach/layerscape/lowlevel.h>
-
-#define scfg_clrsetbits32(addr, clear, set) clrsetbits_be32(addr, clear, set)
-#define scfg_clrbits32(addr, clear) clrbits_be32(addr, clear)
+#include <soc/fsl/scfg.h>
 
 static inline void set_usb_pcstxswingfull(u32 __iomem *scfg, u32 offset)
 {
diff --git a/arch/arm/mach-layerscape/lowlevel-ls102xa.c b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
index 7ea0a5b071..440d50282a 100644
--- a/arch/arm/mach-layerscape/lowlevel-ls102xa.c
+++ b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
@@ -14,6 +14,7 @@
 #include <mach/layerscape/fsl_epu.h>
 #include <soc/fsl/immap_lsch2.h>
 #include <soc/fsl/fsl_immap.h>
+#include <soc/fsl/scfg.h>
 
 void udelay(unsigned long usecs)
 {
@@ -320,6 +321,7 @@ void ls102xa_init_lowlevel(void)
 	cortex_a7_lowlevel_init();
 	arm_cpu_lowlevel_init();
 
+	scfg_init(SCFG_ENDIANESS_BIG);
 	init_csu();
 
 	writel(SYS_COUNTER_CTRL_ENABLE, LSCH2_SYS_COUNTER_ADDR);
diff --git a/arch/arm/mach-layerscape/lowlevel-ls1046a.c b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
index b2aa839f55..3393dc4903 100644
--- a/arch/arm/mach-layerscape/lowlevel-ls1046a.c
+++ b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
@@ -7,6 +7,7 @@
 #include <mach/layerscape/lowlevel.h>
 #include <soc/fsl/immap_lsch2.h>
 #include <soc/fsl/fsl_immap.h>
+#include <soc/fsl/scfg.h>
 
 enum csu_cslx_access {
 	CSU_NS_SUP_R = 0x08,
@@ -222,6 +223,7 @@ void ls1046a_init_lowlevel(void)
 	struct ccsr_cci400 __iomem *cci = IOMEM(LSCH2_CCI400_ADDR);
 	struct ccsr_scfg *scfg = IOMEM(LSCH2_SCFG_ADDR);
 
+	scfg_init(SCFG_ENDIANESS_BIG);
 	init_csu();
 	ls1046a_init_l2_latency();
 	set_cntfrq(25000000);
diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
new file mode 100644
index 0000000000..2d9a2b4629
--- /dev/null
+++ b/arch/arm/mach-layerscape/soc.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <soc/fsl/scfg.h>
+#include <io.h>
+#include <linux/bug.h>
+
+static enum scfg_endianess scfg_endianess = SCFG_ENDIANESS_INVALID;
+
+static void scfg_check_endianess(void)
+{
+	BUG_ON(scfg_endianess == SCFG_ENDIANESS_INVALID);
+}
+
+void scfg_clrsetbits32(void __iomem *addr, u32 clear, u32 set)
+{
+	scfg_check_endianess();
+
+	if (scfg_endianess == SCFG_ENDIANESS_LITTLE)
+		clrsetbits_le32(addr, clear, set);
+	else
+		clrsetbits_be32(addr, clear, set);
+}
+
+void scfg_clrbits32(void __iomem *addr, u32 clear)
+{
+	scfg_check_endianess();
+
+	if (scfg_endianess == SCFG_ENDIANESS_LITTLE)
+		clrbits_le32(addr, clear);
+	else
+		clrbits_be32(addr, clear);
+}
+
+void scfg_setbits32(void __iomem *addr, u32 set)
+{
+	scfg_check_endianess();
+
+	if (scfg_endianess == SCFG_ENDIANESS_LITTLE)
+		setbits_le32(addr, set);
+	else
+		setbits_be32(addr, set);
+}
+
+void scfg_out16(void __iomem *addr, u16 val)
+{
+	scfg_check_endianess();
+
+	if (scfg_endianess == SCFG_ENDIANESS_LITTLE)
+		out_le16(addr, val);
+	else
+		out_be16(addr, val);
+}
+
+void scfg_init(enum scfg_endianess endianess)
+{
+	scfg_endianess = endianess;
+}
diff --git a/include/soc/fsl/scfg.h b/include/soc/fsl/scfg.h
new file mode 100644
index 0000000000..bea184218e
--- /dev/null
+++ b/include/soc/fsl/scfg.h
@@ -0,0 +1,19 @@
+#ifndef __SOC_FSL_SCFG_H
+#define __SOC_FSL_SCFG_H
+
+#include <soc/fsl/scfg.h>
+#include <linux/compiler.h>
+
+enum scfg_endianess {
+	SCFG_ENDIANESS_INVALID,
+	SCFG_ENDIANESS_LITTLE,
+	SCFG_ENDIANESS_BIG,
+};
+
+void scfg_clrsetbits32(void __iomem *addr, u32 clear, u32 set);
+void scfg_clrbits32(void __iomem *addr, u32 clear);
+void scfg_setbits32(void __iomem *addr, u32 set);
+void scfg_out16(void __iomem *addr, u16 val);
+void scfg_init(enum scfg_endianess endianess);
+
+#endif /* __SOC_FSL_SCFG_H */
-- 
2.39.2




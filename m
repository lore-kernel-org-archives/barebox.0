Delivery-date: Mon, 13 Jan 2025 12:40:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXInY-000a5r-2d
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:40:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXInR-0007qb-K7
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:40:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Em/f6Oi7E+cRKEUgBw0UxftrkbQw8NfAqH0XaDnJ6OQ=; b=qTX+Ewseu0MUL/G8NkMSxzAOpE
	hnqvhgQreBOv2yFyxKzp0A6nm29GvKtTY/Sx4meZqxH1WuET8ewGLJrkAYA6efzCNwTpIWQeKYTcm
	ALI+aXi+NVFwNZ5yuRFh2FJDMDMY4rZsdN8tdPMqfOMxTAeZKPm2pFWV3Nd+9uzEw4dp7uhPJoKxq
	mISe562oEA2Z5y61uHmwrT3Gl6/E6T05/eFqGK8MprZZGTQ1eWsCSd/Ea9NEE1slILQMzQxUWPGmf
	tvXPc7BCsyJUls1vOkwAv+hmg+2PsRouexissEgMaQi9QzZDuyVVwNivtVQhk5yDedWtFhrpp2Kzm
	Am+EhxWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIms-00000004xLq-2OCe;
	Mon, 13 Jan 2025 11:39:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXImj-00000004xD5-1Ufl
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:39:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXImi-0007L7-8C; Mon, 13 Jan 2025 12:39:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXImh-000FYn-1n;
	Mon, 13 Jan 2025 12:39:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1t;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:27:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-22-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=3914;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UitS+hCmwrd6Lq/a27pfvhwcTmf3E3hLLsVRrv07Yds=;
 b=U5yaW263RicDFD38DGkHNuVXAznacmy1Izm/CV32HIEWKJ0YlJDW/5XDE61lUbEJMJiFT5P3u
 2HbooIrnvnkB28P+GnTdQw2313yklU9EWH7yeeI7ExOuIlqLo0U9I1/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_033909_415201_7BBA28DA 
X-CRM114-Status: GOOD (  16.84  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 22/23] ARM: k3: Add DRAM size detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for reading the DRAM size back from the DDRSS memory
controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Makefile |  1 +
 arch/arm/mach-k3/common.c |  1 +
 arch/arm/mach-k3/ddrss.c  | 76 +++++++++++++++++++++++++++++++++++++++++++++++
 include/mach/k3/common.h  |  4 +++
 4 files changed, 82 insertions(+)

diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index 6e105095da..b9b987d211 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -1,5 +1,6 @@
 obj-y += common.o
 obj-pbl-$(CONFIG_MACH_K3_CORTEX_R5) += r5.o
+obj-pbl-y += ddrss.o
 
 extra-y += combined-dm-cfg-am625.k3cfg combined-sysfw-cfg-am625.k3cfg
 
diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index d7b44f31e8..d8bed194d6 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -171,6 +171,7 @@ static int am625_init(void)
 
 	am625_get_bootsource(&src, &instance);
 	bootsource_set(src, instance);
+	am625_register_dram();
 
 	genpd_activate();
 
diff --git a/arch/arm/mach-k3/ddrss.c b/arch/arm/mach-k3/ddrss.c
new file mode 100644
index 0000000000..b51371d661
--- /dev/null
+++ b/arch/arm/mach-k3/ddrss.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <memory.h>
+#include <linux/bitfield.h>
+#include <mach/k3/common.h>
+#include <linux/bits.h>
+#include <io.h>
+#include <asm/memory.h>
+#include <linux/kernel.h>
+
+#define CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_0 0x0
+
+#define DRAM_CLASS	GENMASK(11, 8)
+
+#define CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_327 0x51c
+
+#define CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_317 0x4f4
+
+#define ROW_DIFF_0	GENMASK(2, 0)
+#define ROW_DIFF_1	GENMASK(10, 8)
+#define COL_DIFF_0	GENMASK(19, 16)
+#define COL_DIFF_1	GENMASK(27, 24)
+
+#define CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_3 0xc
+
+#define MAX_ROW		GENMASK(4, 0)
+#define MAX_COL		GENMASK(11, 8)
+
+#define AM625_DDRSS_BASE	0x0f308000
+
+#define DENALI_CTL_0_DRAM_CLASS_DDR4		0xa
+#define DENALI_CTL_0_DRAM_CLASS_LPDDR4		0xb
+
+u64 am625_sdram_size(void)
+{
+	void __iomem *base = IOMEM(AM625_DDRSS_BASE);
+	u32 ctl0 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_0);
+	u32 ctl3 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_3);
+	u32 ctl317 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_317);
+	u32 ctl327 = readl(base + CTLPHY_CTL_CFG_CTLCFG_DENALI_CTL_327);
+	unsigned int cols, rows, banks;
+	u64 size = 0;
+
+	if (FIELD_GET(DRAM_CLASS, ctl0) == DENALI_CTL_0_DRAM_CLASS_LPDDR4)
+		banks = 8;
+	else if (FIELD_GET(DRAM_CLASS, ctl0) == DENALI_CTL_0_DRAM_CLASS_DDR4)
+		banks = 16;
+	else
+		return 0;
+
+	if (ctl327 & BIT(0)) {
+		cols = FIELD_GET(MAX_COL, ctl3) - FIELD_GET(COL_DIFF_0, ctl317);
+		rows = FIELD_GET(MAX_ROW, ctl3) - FIELD_GET(ROW_DIFF_0, ctl317);
+		size += memory_sdram_size(cols, rows, banks, 2);
+	}
+
+	if (ctl327 & BIT(1)) {
+		cols = FIELD_GET(MAX_COL, ctl3) - FIELD_GET(COL_DIFF_1, ctl317);
+		rows = FIELD_GET(MAX_ROW, ctl3) - FIELD_GET(ROW_DIFF_1, ctl317);
+		size += memory_sdram_size(cols, rows, banks, 2);
+	}
+
+	return size;
+}
+
+void am625_register_dram(void)
+{
+	u64 size = am625_sdram_size();
+	u64 lowmem = min_t(u64, size, SZ_2G);
+
+	arm_add_mem_device("ram0", 0x80000000, lowmem);
+
+#ifdef CONFIG_64BIT
+	if (size - lowmem)
+		arm_add_mem_device("ram0", 0x880000000ULL, size - lowmem);
+#endif
+}
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index 448ec1343c..d7ceea51d7 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -1,6 +1,10 @@
 #ifndef __MACH_K3_COMMON_H
 #define __MACH_K3_COMMON_H
 
+#include <bootsource.h>
+
 void am625_get_bootsource(enum bootsource *src, int *instance);
+u64 am625_sdram_size(void);
+void am625_register_dram(void);
 
 #endif /* __MACH_K3_COMMON_H */

-- 
2.39.5




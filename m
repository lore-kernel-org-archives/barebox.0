Delivery-date: Thu, 04 Jan 2024 15:19:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ8-003cXY-19
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ6-0005P5-Dd
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8e7fdEXj2UnD4RxfQTk0gc6QIn5wob0BGL3MOSHiOS0=; b=SjVsHhXJxx6Psdi3Kh/HbDwwUX
	BVmtWBuC0SJIVwnx23NyjmXngdGa7riOFBBr3AfAEciAdWrLjxQfs/svSQFyBDzvEXJdiasbnEPqf
	ljpHX3Nia3YuSy24Y0T74pk1W3iZ7TfBuBAUontQ+uBQM+nFBkJgTkuWeirnBSL+DepWnigVvMAir
	JvQ6Ekhplq1hb01j+SV1SbFulxvQJialyGgYUfnQQfHOdRBPoYf1NkuUWtbZk7ED+mwQfRzfwtoG5
	3GuWa2xKvLNLwZqjbS0Pxzpf+k3M2mJqHmArMa6MZSlF+zxhTdxtdxGD36+L4C8RaZSo4SVtg/pDP
	aqMu2/LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOY6-00EJQZ-0K;
	Thu, 04 Jan 2024 14:18:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOY2-00EJKc-0A
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:18:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004Hj-NV; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000Mya-SG; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017zT-2V;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:42 +0100
Message-Id: <20240104141746.165014-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061814_108310_9086AF18 
X-CRM114-Status: GOOD (  15.77  )
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
Subject: [PATCH 15/19] ARM: Add ls1028a lowlevel init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile           |  2 +
 arch/arm/mach-layerscape/lowlevel-ls1028a.c | 42 +++++++++++++++++++++
 include/mach/layerscape/layerscape.h        |  7 ++++
 3 files changed, 51 insertions(+)
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls1028a.c

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 8f288851ff..e4bb1b42f2 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -12,3 +12,5 @@ obj-$(CONFIG_BOOTM) += pblimage.o
 
 lwl-$(CONFIG_ARCH_LS1021) += lowlevel-ls102xa.o
 obj-$(CONFIG_ARCH_LS1021) += restart.o ls102xa_stream_id.o
+
+lwl-$(CONFIG_ARCH_LS1028) += lowlevel-ls1028a.o
diff --git a/arch/arm/mach-layerscape/lowlevel-ls1028a.c b/arch/arm/mach-layerscape/lowlevel-ls1028a.c
new file mode 100644
index 0000000000..fd013b2b52
--- /dev/null
+++ b/arch/arm/mach-layerscape/lowlevel-ls1028a.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <io.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
+#include <mach/layerscape/errata.h>
+#include <mach/layerscape/lowlevel.h>
+#include <soc/fsl/immap_lsch3.h>
+#include <soc/fsl/scfg.h>
+
+static void ls1028a_timer_init(void)
+{
+	u32 __iomem *cntcr = IOMEM(LSCH3_TIMER_ADDR);
+	u32 __iomem *cltbenr = IOMEM(LSCH3_PMU_CLTBENR);
+
+	u32 __iomem *pctbenr = IOMEM(LSCH3_PCTBENR_OFFSET);
+
+	/* Enable timebase for all clusters.
+	 * It is safe to do so even some clusters are not enabled.
+	 */
+	out_le32(cltbenr, 0xf);
+
+	/*
+	 * In certain Layerscape SoCs, the clock for each core's
+	 * has an enable bit in the PMU Physical Core Time Base Enable
+	 * Register (PCTBENR), which allows the watchdog to operate.
+	 */
+	setbits_le32(pctbenr, 0xff);
+
+	/* Enable clock for timer
+	 * This is a global setting.
+	 */
+	out_le32(cntcr, 0x1);
+}
+
+void ls1028a_init_lowlevel(void)
+{
+	scfg_init(SCFG_ENDIANESS_LITTLE);
+	set_cntfrq(25000000);
+	ls1028a_timer_init();
+	ls1028a_errata();
+}
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index c3dfe4d860..95c230b8f3 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -9,6 +9,13 @@
 #define LS1021A_DDR_SDRAM_BASE		0x80000000
 #define LS1021A_DDR_FREQ		1600000000
 
+#define LS1028A_DDR_SDRAM_BASE		0x80000000
+#define LS1028A_DDR_SDRAM_LOWMEM_SIZE	0x80000000
+#define LS1028A_DDR_SDRAM_HIGHMEM_BASE	0x2080000000
+#define LS1028A_SECURE_DRAM_SIZE	SZ_64M
+#define LS1028A_SP_SHARED_DRAM_SIZE	SZ_2M
+#define LS1028A_TZC400_BASE		0x01100000
+
 enum bootsource ls1046a_bootsource_get(void);
 enum bootsource ls1021a_bootsource_get(void);
 
-- 
2.39.2




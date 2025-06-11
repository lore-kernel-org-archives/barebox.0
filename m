Delivery-date: Thu, 12 Jun 2025 00:19:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTnH-006In2-2r
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 00:19:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTnH-0003vi-8Q
	for lore@pengutronix.de; Thu, 12 Jun 2025 00:19:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u2E0NwNA58rLnzeklfULFzey/j0FHWJUwxySySZPnJs=; b=v9vCC+p7OQJ2jvwdibtK6Zs5X2
	L14iNsy3iUvqny0rWb3dVjlIehM2oKQIupaAijB9DnUpIhOqTCUsgdoXXNlXeXy54oYsS/f3uX+HX
	ukLB0leiOOLcTukHoFc4USMQAlRgNmNex98hN34xJDJd+qnNMLIIwfOfaweuWHk1CUwfxJ5LV3c+N
	PPsJVk0/3PVBOapzJW66+qVxazHT7bN32dooRYSpROZkF4WlMdRWbjpSHovERvKm26nEJWsuAh3ru
	dEWWtew3M9vmWLo4217+CAadCPWtEo96aCwMECKzw0hjgXFkQ7uImP4y4D4wO9YqyULhCYxyGcVQB
	gQ2jQ20Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPTmc-0000000BS92-00eT;
	Wed, 11 Jun 2025 22:18:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPRvE-0000000B9M3-2j3V
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 20:19:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uPRvB-0001zv-T5
	for barebox@lists.infradead.org; Wed, 11 Jun 2025 22:19:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uPRvB-0030Ut-2B
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 22:19:41 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Jun 2025 22:19:41 +0200
Message-Id: <20250611201941.3615487-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_131944_685075_EC00FFA6 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Cortex-A9: document core versions used in various SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The core revision is very helpful to know when checking if a specific
erratum is present in the core. Looking this up in the various SoC
specific documents is cumbersome, so leave a comment for the next time
anyone has to do this.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
Tegra seems to miss some workarounds, fixing this requires a bit more
thought than I can spare right now.
---
 arch/arm/mach-imx/cpu_init.c                 | 2 ++
 arch/arm/mach-socfpga/cpu_init.c             | 2 ++
 arch/arm/mach-tegra/tegra_maincomplex_init.c | 2 ++
 arch/arm/mach-zynq/cpu_init.c                | 2 ++
 4 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index e9f42945528e..bd464e9f09e9 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -38,6 +38,8 @@ void imx6_cpu_lowlevel_init(void)
 	arm_cpu_lowlevel_init();
 
 	arm_early_mmu_cache_invalidate();
+
+	/* apply necessary workarounds for Cortex A9 r2p10 */
 	enable_arm_errata_742230_war();
 	enable_arm_errata_743622_war();
 	enable_arm_errata_751472_war();
diff --git a/arch/arm/mach-socfpga/cpu_init.c b/arch/arm/mach-socfpga/cpu_init.c
index f10cd468da96..bed0dabc38e4 100644
--- a/arch/arm/mach-socfpga/cpu_init.c
+++ b/arch/arm/mach-socfpga/cpu_init.c
@@ -9,6 +9,8 @@
 void arria10_cpu_lowlevel_init(void)
 {
 	arm_early_mmu_cache_invalidate();
+
+	/* apply necessary workarounds for Cortex A9 r4p1 */
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
 }
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index e4cc3e780cbe..2ffffcdee3ff 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -38,11 +38,13 @@ void tegra_maincomplex_entry(char *fdt)
 	/* enable ARM errata workarounds early */
 	switch (chiptype) {
 	case TEGRA20:
+		/* Cortex A9 r1p1 */
 		enable_arm_errata_716044_war();
 		enable_arm_errata_742230_war();
 		enable_arm_errata_751472_war();
 		break;
 	case TEGRA30:
+		/* Cortex A9 r2p9 */
 		enable_arm_errata_743622_war();
 		enable_arm_errata_751472_war();
 		break;
diff --git a/arch/arm/mach-zynq/cpu_init.c b/arch/arm/mach-zynq/cpu_init.c
index f26e2947fd6a..b5f620004611 100644
--- a/arch/arm/mach-zynq/cpu_init.c
+++ b/arch/arm/mach-zynq/cpu_init.c
@@ -11,6 +11,8 @@ void zynq_cpu_lowlevel_init(void)
 	arm_cpu_lowlevel_init();
 
 	arm_early_mmu_cache_invalidate();
+
+	/* apply necessary workarounds for Cortex A9 r3p0 */
 	enable_arm_errata_761320_war();
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
-- 
2.49.0




Delivery-date: Wed, 11 Jun 2025 00:50:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7nw-005x3d-2Y
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 00:50:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7nv-0007Ih-BE
	for lore@pengutronix.de; Wed, 11 Jun 2025 00:50:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=laSz+0Nj98XKQB4Ti7lBU0Nz+yPpL48rcg4oTpjJMWA=; b=3ZIEDJX+ttFuzzMCcB1fwVdqqG
	D6lK9h0CJ5w2dU4Ma25ObwkcIqKXJFx77QNJSsGT+JRWGW34HiDrCxmeQGD/8oWpNeH2qAafdZe9i
	BBj4TwdNdNscUzrCt19tBee4HwUg7Ecqk/ChuLyKRgzi0EyaSTo5BlSEdqMXLit5Xqb4qQI6gQc+3
	jRrpOiD3iyA/Q3ZPi6eTp2krQ3srRqjAuyRZyh8DRJTMN2sAgqGxja2sOta/DjnDKb7SyAZkhRrHY
	icUxG+Uv9bQew2VthgTJYk7SAcbsDkv3IreZqJx1RD7OUlg7sbW6NEKMlgl3+Srf6tFgnAAg6mIE8
	/EXtz5yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7nQ-00000008IVQ-0YHD;
	Tue, 10 Jun 2025 22:50:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP5Lf-000000080sp-0RKz
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 20:13:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-0001P2-DX; Tue, 10 Jun 2025 22:13:29 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-002peX-0K;
	Tue, 10 Jun 2025 22:13:29 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5Ld-00BICi-01;
	Tue, 10 Jun 2025 22:13:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>,
	lst@pengutronix.de,
	fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jun 2025 22:13:19 +0200
Message-Id: <20250610201320.2691564-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250610201320.2691564-1-a.fatoum@pengutronix.de>
References: <20250610201320.2691564-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_131331_138970_7118EE03 
X-CRM114-Status: GOOD (  15.39  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] ARM: Cortex-A9: invalidate caches in early lowlevel init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The optee-early code was initially added for i.MX6UL. Trying to naively
enable it on an i.MX6Q boards was observed to cause spurious hangs on
return from OP-TEE to barebox.

Quoting Lucas[1]:

  The real issue with the Cortex A9 caches is that the tags aren't
  cleared on power-up, so some sets/ways may end up in "valid" state if
  not explicitly invalidated. Thus any write to memory may get stuck in
  the cache, even if caching is disabled, as this knob only turns off
  allocation in the cache, but doesn't prevent updates of such bogus
  valid lines. If you then proceed to invalidate the cache, you may
  discard data that has not yet reached DRAM.

This issue did likely not affect the original i.MX6UL, Quoting Lucas
again[2]:

  > How do we know we only need this for Cortex-A9 though?
  > Couldn't e.g. the Cortex-A8 also be affected?

  We can't be 100% sure without specific knowledge about each SoC
  integration. Both the Cortex A8 [1] and Cortex A15 [2] TRMs define a
  reset sequence that mandates the straps to be set in such a way that
  the processor will clear all L1 and L2 memory arrays on power-on reset.

  The only odd one where the TRM doesn't even mention memory arrays in
  the reset sequence is the Cortex A9 [3], which pretty much lines up
  with the number of SoCs where we have seen issues due to uninitialized
  cache content.

Therefore, let's call arm_early_mmu_cache_invalidate() very early in the
low level init. We don't have a common Cortex-A9 init and the locations
touched here were determined by a grep for the Cortex-A9 errata that are
already being worked around by imx6_cpu_lowlevel_init().

[1]: https://lore.barebox.org/barebox/569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de/
[2]: https://lore.barebox.org/barebox/d6a0be9631286122e56fdfd87b9911c310554baf.camel@pengutronix.de/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - replace too late invalidation in start_optee_early with very early
    invalidation in the lowlevel init.
---
 arch/arm/mach-imx/cpu_init.c                 | 2 ++
 arch/arm/mach-socfpga/cpu_init.c             | 2 ++
 arch/arm/mach-tegra/tegra_maincomplex_init.c | 2 ++
 arch/arm/mach-zynq/cpu_init.c                | 2 ++
 4 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index aebbd3defaec..e9f42945528e 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -14,6 +14,7 @@
 #include <mach/imx/imx9-regs.h>
 #include <mach/imx/trdc.h>
 #include <io.h>
+#include <asm/cache.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
 
@@ -36,6 +37,7 @@ void imx6_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
 
+	arm_early_mmu_cache_invalidate();
 	enable_arm_errata_742230_war();
 	enable_arm_errata_743622_war();
 	enable_arm_errata_751472_war();
diff --git a/arch/arm/mach-socfpga/cpu_init.c b/arch/arm/mach-socfpga/cpu_init.c
index 73b69c34c56f..f10cd468da96 100644
--- a/arch/arm/mach-socfpga/cpu_init.c
+++ b/arch/arm/mach-socfpga/cpu_init.c
@@ -2,11 +2,13 @@
 
 #include <common.h>
 #include <asm/barebox-arm-head.h>
+#include <asm/cache.h>
 #include <asm/errata.h>
 #include <mach/socfpga/init.h>
 
 void arria10_cpu_lowlevel_init(void)
 {
+	arm_early_mmu_cache_invalidate();
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
 }
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 2a2272a99fbc..e4cc3e780cbe 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -19,6 +19,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/errata.h>
+#include <asm/cache.h>
 #include <mach/tegra/lowlevel.h>
 #include <mach/tegra/tegra20-pmc.h>
 #include <mach/tegra/tegra20-car.h>
@@ -30,6 +31,7 @@ void tegra_maincomplex_entry(char *fdt)
 	u32 reg = 0;
 
 	arm_cpu_lowlevel_init();
+	arm_early_mmu_cache_invalidate();
 
 	chiptype = tegra_get_chiptype();
 
diff --git a/arch/arm/mach-zynq/cpu_init.c b/arch/arm/mach-zynq/cpu_init.c
index cc7b8d1142a9..f26e2947fd6a 100644
--- a/arch/arm/mach-zynq/cpu_init.c
+++ b/arch/arm/mach-zynq/cpu_init.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <asm/barebox-arm-head.h>
+#include <asm/cache.h>
 #include <asm/errata.h>
 #include <mach/zynq/init.h>
 
@@ -9,6 +10,7 @@ void zynq_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
 
+	arm_early_mmu_cache_invalidate();
 	enable_arm_errata_761320_war();
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
-- 
2.39.5




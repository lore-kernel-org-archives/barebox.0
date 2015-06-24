Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7q8F-0005kO-CT
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 19:14:48 +0000
Received: from tellur.intern.lynxeye.de (p57B5FAB3.dip0.t-ipconnect.de
 [87.181.250.179]) by lynxeye.de (Postfix) with ESMTPA id F1A2A26C2001
 for <barebox@lists.infradead.org>; Wed, 24 Jun 2015 21:13:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 24 Jun 2015 21:13:49 +0200
Message-Id: <1435173229-16144-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: tegra: jump to maincluster earlier
To: barebox@lists.infradead.org

There is no point in repeating the board setup on the main cluster.
It is done either in the AVP startup path or from a first stage loader.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 15 +++++++++------
 arch/arm/mach-tegra/tegra_avp_init.c        |  3 ---
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 768b13d..0c76b88 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -243,11 +243,20 @@ void tegra_ll_delay_usec(int delay)
 	while ((int)readl(TEGRA_TMRUS_BASE + TIMER_CNTR_1US) - timeout < 0);
 }
 
+/* reset vector for the AVP, to be called from board reset vector */
+void tegra_avp_reset_vector(uint32_t boarddata);
+
+/* reset vector for the main CPU complex */
+void tegra_maincomplex_entry(void);
+
 static __always_inline
 void tegra_cpu_lowlevel_setup(void)
 {
 	uint32_t r;
 
+	if (tegra_cpu_is_maincomplex())
+		tegra_maincomplex_entry();
+
 	/* set the cpu to SVC32 mode */
 	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
 	r &= ~0x1f;
@@ -258,10 +267,4 @@ void tegra_cpu_lowlevel_setup(void)
 	tegra_ll_delay_setup();
 }
 
-/* reset vector for the AVP, to be called from board reset vector */
-void tegra_avp_reset_vector(uint32_t boarddata);
-
-/* reset vector for the main CPU complex */
-void tegra_maincomplex_entry(void);
-
 #endif /* __TEGRA_LOWLEVEL_H */
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 91fd894..20fcf3f 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -265,9 +265,6 @@ void tegra_avp_reset_vector(uint32_t boarddata)
 	/* put boarddata in scratch reg, for main CPU to fetch after startup */
 	writel(boarddata, TEGRA_PMC_BASE + PMC_SCRATCH(10));
 
-	if (tegra_cpu_is_maincomplex())
-		tegra_maincomplex_entry();
-
 	/* we want to bring up the high performance CPU complex */
 	if (tegra_get_chiptype() >= TEGRA30)
 		tegra_cluster_switch_hp();
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOR-0004WW-Cs
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:13 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 1429118B425E
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:28 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:59 +0200
Message-Id: <1401827717-6420-13-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 12/30] tegra: power up additional partitions on Tegra124
To: barebox@lists.infradead.org

Those 3 are needed to power CPU0 from the CPUG cluster.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h |  4 ++++
 arch/arm/mach-tegra/tegra_avp_init.c           | 24 ++++++++++++++++++------
 2 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
index 3a05e0f..30ac065 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-pmc.h
@@ -66,4 +66,8 @@
 #define PMC_PWRGATE_STATUS_TD		(1 << 1)
 #define PMC_PWRGATE_STATUS_CPU		(1 << 0)
 
+#define PMC_PARTID_CRAIL		0
+#define PMC_PARTID_CE0			14
+#define PMC_PARTID_C0NC			15
+
 #define PMC_SCRATCH(i)			(0x050 + 0x4*i)
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index cc8b0e2..3d21963 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -197,26 +197,38 @@ static void start_cpu0_clocks(void)
 	tegra_ll_delay_usec(300);
 }
 
-static void maincomplex_powerup(void)
+static void power_up_partition(u32 partid)
 {
 	u32 reg;
 
-	if (!(readl(TEGRA_PMC_BASE + PMC_PWRGATE_STATUS) &
-	      PMC_PWRGATE_STATUS_CPU)) {
-		writel(PMC_PWRGATE_TOGGLE_START | PMC_PWRGATE_TOGGLE_PARTID_CPU,
+	if (!(readl(TEGRA_PMC_BASE + PMC_PWRGATE_STATUS) & (1 << partid))) {
+		writel(PMC_PWRGATE_TOGGLE_START | partid,
 		       TEGRA_PMC_BASE + PMC_PWRGATE_TOGGLE);
 
 		while (!(readl(TEGRA_PMC_BASE + PMC_PWRGATE_STATUS) &
-			 PMC_PWRGATE_STATUS_CPU));
+			(1 << partid)));
 
 		reg = readl(TEGRA_PMC_BASE + PMC_REMOVE_CLAMPING_CMD);
-		reg |= PMC_REMOVE_CLAMPING_CMD_CPU;
+		reg |= (1 << partid);
 		writel(reg, TEGRA_PMC_BASE + PMC_REMOVE_CLAMPING_CMD);
 
 		tegra_ll_delay_usec(1000);
 	}
 }
 
+static void maincomplex_powerup(void)
+{
+	/* main cpu rail */
+	power_up_partition(PMC_PARTID_CRAIL);
+
+	if (tegra_get_chiptype() >= TEGRA114) {
+		/* fast cluster uncore part */
+		power_up_partition(PMC_PARTID_C0NC);
+		/* fast cluster cpu0 part */
+		power_up_partition(PMC_PARTID_CE0);
+	}
+}
+
 static void tegra_cluster_switch_hp(void)
 {
 	u32 reg;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

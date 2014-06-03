Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvPG-00056b-Lb
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:34:03 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id DFB5218B427E
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:29 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:04 +0200
Message-Id: <1401827717-6420-18-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 17/30] tegra: hardcode entry address for main cluster
To: barebox@lists.infradead.org

I don't know why get_runtime_offset fails on T124 yet,
but this is a safe workaround, with the nice side-effect
of fixing second stage barebox loading.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra_avp_init.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 63ccfb5..619fecf 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -260,6 +260,10 @@ static void tegra_cluster_switch_hp(void)
 void tegra_avp_reset_vector(uint32_t boarddata)
 {
 	int num_cores;
+	unsigned int entry_address = 0;
+
+	if (tegra_cpu_is_maincomplex())
+		tegra_maincomplex_entry();
 
 	/* we want to bring up the high performance CPU complex */
 	if (tegra_get_chiptype() >= TEGRA30)
@@ -274,8 +278,18 @@ void tegra_avp_reset_vector(uint32_t boarddata)
 	stop_maincomplex_clocks(num_cores);
 
 	/* set start address for the main CPU complex processors */
-	writel(tegra_maincomplex_entry - get_runtime_offset(),
-	       TEGRA_EXCEPTION_VECTORS_BASE + 0x100);
+	switch (tegra_get_chiptype()) {
+	case TEGRA20:
+		entry_address = 0x108000;
+		break;
+	case TEGRA30:
+	case TEGRA124:
+		entry_address = 0x80108000;
+		break;
+	default:
+		break;
+	}
+	writel(entry_address, TEGRA_EXCEPTION_VECTORS_BASE + 0x100);
 
 	/* put boarddata in scratch reg, for main CPU to fetch after startup */
 	writel(boarddata, TEGRA_PMC_BASE + PMC_SCRATCH(10));
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wi83Y-0008Ai-MH
 for barebox@lists.infradead.org; Wed, 07 May 2014 20:03:09 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id CD03918B4258
 for <barebox@lists.infradead.org>; Wed,  7 May 2014 22:02:08 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  7 May 2014 22:05:29 +0200
Message-Id: <1399493130-13670-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] ARM: tegra30: slow down CPU to 600 MHz
To: barebox@lists.infradead.org

It's not safe to ramp up the CPU clock speed to
1,4 GHz on all T30 SKUs, as this may result in failure
to start the kernel properly. Start CPU at 600 MHz,
which is safe even for the slowest SKUs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra_avp_init.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 1afea44..53e81d9 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -87,10 +87,10 @@ static struct pll_config pllx_config_table[][4] = {
 		{1000, 26, 0, 12},	/* OSC 26.0 MHz */
 	}, /* TEGRA 20 */
 	{
-		{862, 8,  0, 8},
-		{583, 8,  0, 4},
-		{700, 6,  0, 8},
-		{700, 13, 0, 8},
+		{600,  13, 0, 8 },
+		{500,  16, 0, 8 },
+		{600,  12, 0, 8 },
+		{600,  26, 0, 8 },
 	}, /* TEGRA 30 */
 };
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

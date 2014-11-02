Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1S0-0006p8-Tv
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:08:38 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id BF31A26C2008
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:49 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:49 +0100
Message-Id: <1414959235-18095-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 07/13] tegra: pmc: work around power domain failure
To: barebox@lists.infradead.org

Sometimes a power domain didn't properly power up,
reading back the command register seems to fix this
by flushing the write.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra20-pmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index d9f76e2..eaa5ac7 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -55,6 +55,8 @@ static int tegra_powergate_set(int id, bool new_state)
 	}
 
 	writel(PMC_PWRGATE_TOGGLE_START | id, pmc_base + PMC_PWRGATE_TOGGLE);
+	/* I don't know exactly why this is needed, seems to flush the write */
+	readl(pmc_base + PMC_PWRGATE_TOGGLE);
 
 	return 0;
 }
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

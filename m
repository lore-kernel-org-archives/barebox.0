Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw1y-0006zp-EY
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:53:18 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id 347B618B4266
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:20 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:56:55 +0100
Message-Id: <1386100622-8498-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/8] tegra: fix fallout from relocatable code changes in PLLX
 init
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Urgh, the only reason why this didn't blew earlier is that it was
covered by another bug, which caused the main CPU complex to run off OSC
clock.
---
 arch/arm/mach-tegra/tegra_avp_init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 6cabdb3..2c2d6fc 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -103,6 +103,8 @@ static void init_pllx(void)
 		    CRC_OSC_CTRL_OSC_FREQ_MASK) >> CRC_OSC_CTRL_OSC_FREQ_SHIFT;
 
 	conf = &pllx_config_table[chiptype][osc_freq];
+	/* we are not relocated yet - globals are a bit more tricky here */
+	conf = (struct pll_config *)((char *)conf - get_runtime_offset());
 
 	/* set PLL bypass and frequency parameters */
 	reg = CRC_PLLX_BASE_BYPASS;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltX-0002mn-7d
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:47 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:46 +0100
Message-Id: <1423478871-15276-6-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 05/10] ARM: socfpga: clock-manager: set mainnandsdmmcclk
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/clock-manager.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/clock-manager.c b/arch/arm/mach-socfpga/clock-manager.c
index 5196f08b09af..f17371365fe4 100644
--- a/arch/arm/mach-socfpga/clock-manager.c
+++ b/arch/arm/mach-socfpga/clock-manager.c
@@ -174,6 +174,7 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg)
 	writel(cfg->emac1clk, cm + CLKMGR_PERPLLGRP_EMAC1CLK_ADDRESS);
 	writel(cfg->mainqspiclk, cm + CLKMGR_MAINPLLGRP_MAINQSPICLK_ADDRESS);
 	writel(cfg->perqspiclk, cm + CLKMGR_PERPLLGRP_PERQSPICLK_ADDRESS);
+	writel(cfg->mainnandsdmmcclk, cm + CLKMGR_MAINPLLGRP_MAINNANDSDMMCCLK_ADDRESS);
 	writel(cfg->pernandsdmmcclk, cm + CLKMGR_PERPLLGRP_PERNANDSDMMCCLK_ADDRESS);
 	writel(cfg->perbaseclk, cm + CLKMGR_PERPLLGRP_PERBASECLK_ADDRESS);
 	writel(cfg->s2fuser1clk, cm + CLKMGR_PERPLLGRP_S2FUSER1CLK_ADDRESS);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

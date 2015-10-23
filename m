Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fed1rmfepo101.cox.net ([68.230.241.143])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZplrV-0007I7-7i
 for barebox@lists.infradead.org; Fri, 23 Oct 2015 23:35:06 +0000
Received: from fed1rmimpo110 ([68.230.241.159]) by fed1rmfepo101.cox.net
 (InterMail vM.8.01.05.15 201-2260-151-145-20131218) with ESMTP
 id <20151023233443.JICX13844.fed1rmfepo101.cox.net@fed1rmimpo110>
 for <barebox@lists.infradead.org>; Fri, 23 Oct 2015 19:34:43 -0400
From: Eric Nelson <eric@nelint.com>
Date: Fri, 23 Oct 2015 16:34:40 -0700
Message-Id: <1445643280-11515-1-git-send-email-eric@nelint.com>
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
Subject: [PATCH] imx6-mmdc: restore RALAT/WALAT in MMDC0, not MMDC1
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Eric Nelson <eric@nelint.com>

Signed-off-by: Eric Nelson <eric@nelint.com>
---
 arch/arm/mach-imx/imx6-mmdc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 40fe0cf..7840c1a 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -474,7 +474,7 @@ int mmdc_do_dqs_calibration(void)
 	writel(v, P0_IPS + MAPSR);
 
 	/* restore MDMISC value (RALAT, WALAT) */
-	writel(esdmisc_val, P1_IPS + MDMISC);
+	writel(esdmisc_val, P0_IPS + MDMISC);
 
 	/* clear DQS pull ups */
 	v = readl(IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0) & ~0x7000;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

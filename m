Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXUNB-0003lh-53
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:58:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:57:56 +0100
Message-Id: <1323075477-28567-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075477-28567-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075477-28567-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] ARM i.MX53: Adjust MMC clock frequencies to 200MHz
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx53.c |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 7f3c5ba..64bec86 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -173,6 +173,15 @@ int mx53_init_lowlevel(void)
 	r = readl(ccm + MX5_CCM_CSCDR1);
 	r &= ~0x3f;
 	r |= 0x0a;
+
+	r &= ~MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK;
+	r &= ~MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK;
+	r |= 1 << MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET;
+
+	r &= ~MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PRED_MASK;
+	r &= ~MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_MASK;
+	r |= 1 << MX5_CCM_CSCDR1_ESDHC3_MX53_CLK_PODF_OFFSET;
+
 	writel(r, ccm + MX5_CCM_CSCDR1);
 
 	/* Restore the default values in the Gate registers */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

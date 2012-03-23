Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB1rW-0003Am-BC
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 10:36:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Mar 2012 11:36:19 +0100
Message-Id: <1332498979-13742-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332498979-13742-1-git-send-email-s.hauer@pengutronix.de>
References: <1332498979-13742-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM i.MX51 lowlevel: setup full cpu speed unconditionally
To: barebox@lists.infradead.org

What looked like a TO specific hack really is a hack for
older babbage boards. As the babbage code now handles this
correctly we can remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c |    7 ++-----
 1 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index f7f2345..5483d10 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -238,11 +238,8 @@ void imx51_init_lowlevel(void)
 	/* Set the platform clock dividers */
 	writel(0x00000124, MX51_ARM_BASE_ADDR + 0x14);
 
-	/* Run TO 3.0 at Full speed, for other TO's wait till we increase VDDGP */
-	if (imx_silicon_revision() == MX51_CHIP_REV_3_0)
-		writel(0x0, ccm + MX5_CCM_CACRR);
-	else
-		writel(0x1, ccm + MX5_CCM_CACRR);
+	/* Run at Full speed */
+	writel(0x0, ccm + MX5_CCM_CACRR);
 
 	/* Switch ARM back to PLL 1 */
 	writel(0x0, ccm + MX5_CCM_CCSR);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

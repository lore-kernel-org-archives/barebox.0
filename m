Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fed1rmfepo102.cox.net ([68.230.241.144])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpiLp-0002Mi-7f
 for barebox@lists.infradead.org; Fri, 23 Oct 2015 19:50:11 +0000
Received: from fed1rmimpo210 ([68.230.241.161]) by fed1rmfepo102.cox.net
 (InterMail vM.8.01.05.15 201-2260-151-145-20131218) with ESMTP
 id <20151023194947.TLCR12313.fed1rmfepo102.cox.net@fed1rmimpo210>
 for <barebox@lists.infradead.org>; Fri, 23 Oct 2015 15:49:47 -0400
From: Eric Nelson <eric@nelint.com>
Date: Fri, 23 Oct 2015 12:49:44 -0700
Message-Id: <1445629784-2024-1-git-send-email-eric@nelint.com>
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
Subject: [PATCH] imx6-mmdc: fix automatic power down enable in write level
 calibration
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Eric Nelson <eric@nelint.com>

Bit 0 of the MAPSR register controls auto power down.

Explicitly clear this bit instead of reserved bit when
exiting from mmdc_do_write_level_calibration().

Signed-off-by: Eric Nelson <eric@nelint.com>
---
 arch/arm/mach-imx/imx6-mmdc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 64fb624..40fe0cf 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -103,9 +103,9 @@ int mmdc_do_write_level_calibration(void)
 	val |= 0x00005500;
 	writel(val, (P0_IPS + MDPDC));
 
-	/* enable Adopt power down timer: */
+	/* enable auto power down timer: */
 	val = readl(P0_IPS + MAPSR);
-	val &= 0xfffffff7;
+	val &= ~1;
 	writel(val, (P0_IPS + MAPSR));
 
 	/* clear CON_REQ */
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

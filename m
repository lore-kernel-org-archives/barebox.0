Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxut-0002rT-Ce
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:11:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:10:38 +0200
Message-Id: <1459512644-8581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] ARM: i.MX6: esdctl: Fix memsize calculation for 4GiB/cs
To: Barebox List <barebox@lists.infradead.org>

On i.MX6 a single chipselect can have 4GiB, which overflows a 32bit
type, so imx6_mmdc_sdram_size() must return a u64 to support this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e633b62..66ba51c 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -171,11 +171,11 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
  * MMDC - found on i.MX6
  */
 
-static inline unsigned long imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
+static inline u64 imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
 {
 	u32 ctlval = readl(mmdcbase + MDCTL);
 	u32 mdmisc = readl(mmdcbase + MDMISC);
-	unsigned long size;
+	u64 size;
 	int rows, cols, width = 2, banks = 8;
 
 	if (cs == 0 && !(ctlval & MMDCx_MDCTL_SDE0))
@@ -201,7 +201,7 @@ static inline unsigned long imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
 	if (mdmisc & MMDCx_MDMISC_DDR_4_BANKS)
 		banks = 4;
 
-	size = (1 << cols) * (1 << rows) * banks * width;
+	size = (u64)(1 << cols) * (1 << rows) * banks * width;
 
 	return size;
 }
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

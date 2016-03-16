Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x234.google.com ([2607:f8b0:400e:c00::234])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ag2EN-00058J-DE
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:44 +0000
Received: by mail-pf0-x234.google.com with SMTP id n5so56136793pfn.2
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:49 -0700
Message-Id: <1458099232-9050-14-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/16] i.MX6: Apply PL310 errata base on PL310's revision
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

I.MX6Q Plus parts have r3p2 revision of PL310 so double linefill
errata no longer applies for all of the i.MX6Q SoCs. Change the code to
use PL310's revision inforation to determine if workaround needs to be
applied.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx6.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index db1530c..0c7338d 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -210,11 +210,15 @@ int imx6_devices_init(void)
 static int imx6_mmu_init(void)
 {
 	void __iomem *l2x0_base = IOMEM(0x00a02000);
-	u32 val;
+	u32 val, cache_part, cache_rtl;
 
 	if (!cpu_is_mx6())
 		return 0;
 
+	val = readl(l2x0_base + L2X0_CACHE_ID);
+	cache_part = val & L2X0_CACHE_ID_PART_MASK;
+	cache_rtl  = val & L2X0_CACHE_ID_RTL_MASK;
+
 	/* configure the PREFETCH register */
 	val = readl(l2x0_base + L2X0_PREFETCH_CTRL);
 	val |=  L2X0_DOUBLE_LINEFILL_EN |
@@ -230,7 +234,8 @@ static int imx6_mmu_init(void)
 	 * Workaround: The only workaround to this erratum is to disable the
 	 * double linefill feature. This is the default behavior.
 	 */
-	if (cpu_is_mx6q())
+	if (cache_part == L2X0_CACHE_ID_PART_L310 &&
+	    cache_rtl < L2X0_CACHE_ID_RTL_R3P2)
 		val &= ~(L2X0_DOUBLE_LINEFILL_EN |
 			 L2X0_INCR_DOUBLE_LINEFILL_EN);
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
